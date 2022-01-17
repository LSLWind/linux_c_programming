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

    int in_fd = 0, out_fd = 0, n_chars = 0;
    char buf[BUFFER_SIZE];
    memset(buf, 0, BUFFER_SIZE);

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