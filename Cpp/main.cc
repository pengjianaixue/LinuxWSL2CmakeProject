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
    using executeAppFun = void(*)(long long paramter_1,...);
    char current_absolute_path[255];
    if (NULL == realpath("./", current_absolute_path))
    {
        printf("***Error***\n");
        exit(-1);
    }
    strcat(current_absolute_path, "/build/libdylibTest.so");
    printf("current absolute path:%s\n", current_absolute_path);
    void* dlHandle = dlopen(current_absolute_path,RTLD_LAZY);
    if (!dlHandle)
    {
        std::cout << "dl open failed" << std::endl;
        return -1;
    }
    TestStruct testStruct{1,5};
    int j{0};
    void* intj = &j;
    long long paramter_1 = (long long )(&testStruct);
    executeAppFun func = (executeAppFun)dlsym(dlHandle,"callTest");
    if (!func)
    {
        std::cout << "dl sym failed" << std::endl;
        return -1;
    }
    std::cout << "iostream" << std::endl;
    std::cout << "test" << std::endl;
    func(paramter_1,j);
    
}