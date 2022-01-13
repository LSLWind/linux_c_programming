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