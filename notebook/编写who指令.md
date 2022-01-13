## 编写一个who命令

### who命令工作原理

who通过读取/usr/include/utmp.h文件获取文本信息并显示当前用户/进程登录到系统的信息，这个文件可以在`#include <utmp.h> `中找到，该文件的信息定义为结构体`utmp`，路径定义为`UTMP_FILE`，因此只需要通过读取已定义好的文件，将信息读进`utmp`并显示即可。

![image.png](https://p1-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/dbe44d81ae374dcc8e0a96a7858b3447~tplv-k3u1fbpfcp-watermark.image?)

## 文件读取基本API

### 打开文件open

**系统调用在进程和文件之间建立一条连接，这个连接被称为文件描述符**

```c
#include<fcntl.h>
int fd = open(char * name, int how)
```

* name	文件名
* how	O_RDONLY、O_WRONLY、O_RDWR

要打开一个文件，必须指定文件名和打开模式，有3种打开模式：只读、只写、可读可写， 分别对应于 O_RDONLY、O_WRONLY、O_RDWR

**打开文件是内核提供的服务，如果在打开过程中内核检测到任何错误，这个系统调用就会返回-1。**

错误类型是各种各样的，如：要打开的文件不存在。即使文件存在，也可能因为权限不够而无法打开，或者是无权访问文件所在的目录。

**打开文件会建立进程和文件之间的连接，文件描述符就是用来惟一标识这个连接的， 如果同时打开好几个文件，它们所对应的文件描述符是不同的，如果将一个文件打开多次， 对应的文件描述符也不相同。**

### 读取数据read

```c++
#include<unistd.h>
ssize_t numread = read(int fd, void * buf, size_t qty)
```

read这个系统调用请求内核从fd所指定的文件中读取qty字节的数据，存放到buf 所指定的内存空间中，内核如果成功地读取了数据，就返回所读取的字节数目，否则返回-1

### 关闭文件close

```
#include<unistd.h>
int result = close(int fd)
```

close这个系统调用会关闭进程和文件fd之间的连接

## 时间转换API

### 时间转换ctime

定义在头文件`#include <time.h>`中，用于将1970依赖的时间秒数转换为时间戳

```c++
const char *convert_time(long time_val)
{
    const char *cp = ctime(&time_val); //ctime将1970标准时间转成字符串
    return cp;
}
```

## 代码

建立cmake工程

![image.png](https://p6-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/d6603579d5fd43dd87397e08965a7df7~tplv-k3u1fbpfcp-watermark.image?)

who.h

```c++
#ifndef _2_WHO_
#define _2_WHO_
//----------------------------------------------------------------
void who();
void show_info(const struct utmp *utmp_fp);
const char *convert_time(long time_val);
#endif
```

who.cpp

```c++
#include <utmp.h> //who 读取utmp文件定义结构体
#include <fcntl.h>
#include <unistd.h>
#include <iostream>
#include <time.h>
#include "../include/2_who.h"
using namespace std;

void who()
{
    struct utmp current_record;          //who 读取utmp文件定义结构体
    int utmp_fd;                         //utmp文件描述符
    int reclen = sizeof(current_record); // 记录长度

    if ((utmp_fd = open(UTMP_FILE, O_RDONLY)) == -1)
    {
        perror(UTMP_FILE); //读取文件失败
        cout << "Error opening utmp file" << endl;
        return;
    }
    //读取文件描述符
    while (read(utmp_fd, &current_record, reclen) == reclen)
    {
        show_info(&current_record);
    }

    close(utmp_fd);
}
void show_info(const struct utmp *utmp_fp)
{
    //只打印用户进程
    if (utmp_fp->ut_type != USER_PROCESS)
    {
        return;
    }
    cout << utmp_fp->ut_name << " "
         << utmp_fp->ut_line << " "
         << convert_time(utmp_fp->ut_time) << endl;
}

const char *convert_time(long time_val)
{
    const char *cp = ctime(&time_val); //ctime将1970标准时间转成字符串
    return cp;
}
```

main.cpp

```c++
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <iostream>
#include <time.h>
#include "./include/2_who.h"
using namespace std;
void show_help();
int main(int argc, char **argv)
{

    for (int i = 1; i < argc; i++)
    {
        string instruction(argv[i]);
        if (instruction == "-who")
        {
            who();
        }
        else if (instruction == "-help")
        {
            show_help();
        }
        else
        {
            cout << instruction << " maybe error, enter -help show all instructions" << endl;
            show_help();
        }
    }
    return 0;
}
void show_help()
{
    cout << "LSL --help" << endl
         << "-who" << endl;
}
```

CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.0.0)
project(linux_c_programming VERSION 0.1.0)

include(CTest)
enable_testing()

set(SOURCES
main.cpp
src/2_who.cpp
)


add_executable(lsl ${SOURCES})

target_include_directories(lsl
PRIVATE
${PROJECT_SOURCE_DIR}/include)



set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

```

![image.png](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/bea420a5f48e4b67abbecc71540aef34~tplv-k3u1fbpfcp-watermark.image?)

## 参考来源

1. Unix/Linux编程实践教程
2. https://github.com/LSLWind/linux_c_programming

