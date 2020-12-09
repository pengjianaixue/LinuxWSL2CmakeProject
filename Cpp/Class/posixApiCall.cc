#include"posixApiCall.h"

extern "C" void executeApp(const char* programPath)
{
    std::cout << programPath << std::endl;
}
extern "C" void executeProgram(const char* programPath)
{
    std::cout << programPath << std::endl;
}