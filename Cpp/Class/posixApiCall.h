#include<unistd.h>
#include<atomic>
#include<string>
#include<iostream>
struct TestStruct
{
    int i{};
    int j{};
    /* data */
};

extern "C" void callTest(TestStruct *testStrcut,int intnumber);
extern "C" void executeApp(const char* programPath);
extern "C" void executeProgram(const char* programPath);