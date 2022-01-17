## 编写cp命令

`cp source - file target - file`

如果target-file所指定的文件不存在，cp就创建这个文件，如果已经存在就覆盖,target -file的内容与source-file相同

### 文件读取基本API

#### 创建文件create()

```c++
#include <fcntl.h>
int fd =creat(char * filename, mode_t mode)
```

creat告诉内核创建一个名为filename的文件，如果这个文件不存在，就创建它，如果已经存在，就把它的内容清空，把文件的长度设为0。

如果内核成功地创建了文件，那么文件的权限由mode指定

`fd = creat( "addressbook',0644)；`0644就代表权限`rw-r--r--`

#### 写数据write()

```c++
#include <unistd.h>
size_t result	= write(int fd, void * buf, size_t amt)
```

write这个系统调用告诉内核将内存中指定的数据写入文件，如果内核不能写入或写入失败，write返回一1，如果写入成功，则返回写入的字节数。

为什么实际写入的字节数会少于所要求的呢？有两个原因，第一个是有的系统对文件 的最大尺寸有限制，第二个是磁盘空间接近满了。在上述两种情况下，内核都会尽量把数据 往文件中写，并将实际写入的字节数返回，所以调用write后都必须检查返回值是否与要写入的相同，如果不同，就要采取相应的措施。

## 代码

只实现基本功能，从源文件读取数据写入缓冲，在将缓冲写入目标文件

2_cp.h

```c++
#ifndef _2_CP_
#define _2_CP_

const static int BUFFER_SIZE = 4096;
const static int COPY_MODE = 0644;

void cp(const char *scr, const char *dst);
#endif //
```

2_cp.cpp

```c++
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <iostream>
#include <2_cp.h>
using namespace std;

void cp(const char *src, const char *dst)
{

    if (src == NULL || dst == NULL || strlen(src) == 0 || strlen(dst) == 0)
    {
        cout << "error arguments" << endl;
    }

    int in_fd, out_fd, n_chars;
    char buf[BUFFER_SIZE];

    //打开源和目的文件
    if ((in_fd = open(src, O_RDWR)) == -1)
    {
        cout << "Error opening file " << src << endl;
        return;
    }
    if ((out_fd = creat(dst, COPY_MODE)) == -1)
    {
        cout << "Error creating file " << dst << endl;
        return;
    }

    //读写数据
    while ((n_chars = read(in_fd, buf, BUFFER_SIZE)) > 0)
    {
        //读取到数据
        if ((write(out_fd, buf, n_chars)) != n_chars)
        {
            cout << "Error writing to" << dst << endl;
            return;
        }
    }

    if (n_chars == -1)
    {
        cout << "Error reading from " << src << endl;
    }

    //关闭文件
    if (close(in_fd) == -1 || close(out_fd) == -1)
    {
        cout << "Error closing file " << endl;
    }

    cout << "cp success" << endl;
}
```

main.cpp

```c++
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <iostream>
#include <time.h>
#include "2_who.h"
#include "2_cp.h"
using namespace std;
void show_help();
int main(int argc, char **argv)
{

    string instruction(argv[1]);
    if (instruction == "who")
    {
        who();
    }
    else if (instruction == "cp")
    {
        cp(argv[2], argv[3]);
    }
    else if (instruction == "--help")
    {
        show_help();
    }
    else
    {
        cout << instruction << " maybe error, enter -help show all instructions" << endl;
        show_help();
    }
    return 0;
}
void show_help()
{
    cout << "LSL --help" << endl
         << "who" << endl
         << "cp" << endl;
}
```

![image.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/5ba8cf88e906468d8537472926003fdc~tplv-k3u1fbpfcp-watermark.image?)

