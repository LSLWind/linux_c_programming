#include <stdio.h>
#include <utmp.h> //who 读取utmp文件定义结构体
#include <fcntl.h>
#include <unistd.h>
#include <iostream>
using namespace std;
void show_info(const struct utmp *utmp_fp);
int main()
{
    struct utmp current_record;          //who 读取utmp文件定义结构体
    int utmp_fd;                         //utmp文件描述符
    int reclen = sizeof(current_record); // 记录长度

    if ((utmp_fd = open(UTMP_FILE, O_RDONLY)) == -1)
    {
        perror(UTMP_FILE); //读取文件失败；
        return -1;
    }
    //读取文件描述符
    while (read(utmp_fd, &current_record, reclen) == reclen)
    {
        show_info(&current_record);
    }

    close(utmp_fd);
    return 0;
}

void show_info(const struct utmp *utmp_fp)
{
    cout << utmp_fp->ut_name << " "
         << utmp_fp->ut_line << " "
         << utmp_fp->ut_time << endl;
}