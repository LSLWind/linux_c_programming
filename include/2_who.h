#ifndef _2_WHO_
#define _2_WHO_
//----------------------------------------------------------------
void who();
void show_info(const struct utmp *utmp_fp);
const char *convert_time(long time_val);
#endif