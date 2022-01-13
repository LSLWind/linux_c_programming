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