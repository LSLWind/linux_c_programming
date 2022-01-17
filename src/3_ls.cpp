#include <sys/types.h>
#include <dirent.h>
#include <iostream>
#include <sys/stat.h>
#include <string>
#include <vector>
#include <time.h>
#include "3_ls.h"
using namespace std;
/**
 * @brief ls 只接受单个参数，如ls -l
 * 
 * @param dirname 
 * @param arg 
 */
void ls(const char *dirname, const char *arg)
{

    if (dirname == NULL)
    {
        do_ls(".", arg);
    }
    else
    {
        do_ls(dirname, arg);
    }
}
void do_ls(const char *dirname, const char *arg)
{
    DIR *dir_ptr;           //目录指针
    struct dirent *direntp; //目录信息
    //打开读取
    if ((dir_ptr = opendir(dirname)) == NULL)
    {
        perror("opendir error");
    }
    else
    {
        while ((direntp = readdir(dir_ptr)) != NULL)
        {
            cout << direntp->d_name << get_stat_info(direntp->d_name) << endl;
        }
    }
}

string get_stat_info(const char *filename)
{
    struct stat info;
    string res = " ";
    if (stat(filename, &info) != -1)
    {
        //模式信息
        mode_t mode = info.st_mode;
        //文件类别
        if (S_ISDIR(mode))
        {
            res += "dir ";
        }
        else if (S_ISREG(mode))
        {
            res += "file ";
        }
        else
        {
            res += "unknown ";
        }
        //文件权限，usr - group - other
        res += (mode & S_IRUSR == 0) ? '-' : 'r';
        res += (mode & S_IWUSR == 0) ? '-' : 'w';
        res += (mode & S_IXUSR == 0) ? '-' : 'x';

        res += (mode & S_IRGRP == 0) ? '-' : 'r';
        res += (mode & S_IWGRP == 0) ? '-' : 'w';
        res += (mode & S_IXGRP == 0) ? '-' : 'x';

        res += (mode & S_IROTH == 0) ? '-' : 'r';
        res += (mode & S_IWOTH == 0) ? '-' : 'w';
        res += (mode & S_IXOTH == 0) ? '-' : 'x';
        //大小
        res+=" ";
        res +=  info.st_size;
        res+=" ";
        //时间
        res += ctime(&info.st_mtim.tv_sec);
    }
    return res;
}