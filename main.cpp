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