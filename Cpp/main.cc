#include<iostream>
#include<unistd.h>
#include"Class/CallTest.h"
#include"Class/posixApiCall.h"
#include<dlfcn.h>
#include <stdlib.h>
#include<cstring>
int main()
{
    CallWapper callWapper;
    using executeAppFun = void(*)(const char*,...);
    char current_absolute_path[255];
    if (NULL == realpath("./", current_absolute_path))
    {
        printf("***Error***\n");
        exit(-1);
    }
    strcat(current_absolute_path, "/");
    printf("current absolute path:%s\n", current_absolute_path);
    void* dlHandle = dlopen("/home/jianpeng/workspace/build/libdylibTest.so",RTLD_LAZY);
    if (!dlHandle)
    {
        std::cout << "dl open failed" << std::endl;
        return -1;
        /* code */
    }
    executeAppFun func = (executeAppFun)dlsym(dlHandle,"executeApp");
    if (!func)
    {
        std::cout << "dl sym failed" << std::endl;
        return -1;
        /* code */
    }
    
    std::cout << "iostream" << std::endl;
    std::cout << "test" << std::endl;
    func("dl open","External Paramter");
    
}