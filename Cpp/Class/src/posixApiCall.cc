#include"../inc/posixApiCall.h"

extern "C" void executeApp(const char* programPath)
{
    std::cout << programPath << std::endl;
}
extern "C" void executeProgram(const char* programPath)
{
    std::cout << programPath << std::endl;
}
extern "C" void callTest(TestStruct *testStrcut,int intnumber)
{
    std::cout << "testStrcut->i" << testStrcut->i << std::endl;
    std::cout << "testStrcut->j" << testStrcut->j << std::endl;
    std::cout << "intnumber" << intnumber << std::endl;
}