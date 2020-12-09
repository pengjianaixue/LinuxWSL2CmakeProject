#include<unistd.h>
#include<atomic>
#include<string>
#include<iostream>

extern "C" void executeApp(const char* programPath);
extern "C" void executeProgram(const char* programPath);