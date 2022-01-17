#include <string>
#ifndef _3_LS_
#define _3_LS_
//----------------------------------------------------------------
void ls(const char *dirname, const char *arg);
void do_ls(const char *dirname, const char *arg);
std::string get_stat_info(const char *filename);
#endif