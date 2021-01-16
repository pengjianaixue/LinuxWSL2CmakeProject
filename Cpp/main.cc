#include <iostream>
#include <unistd.h>
#include "Class/inc/CallTest.h"
#include "Class/inc/posixApiCall.h"
#include <dlfcn.h>
#include <stdlib.h>
#include <vector>
#include <cstring>
#include <atomic>
#include "TestFunction/testCode.h"
int main()
{
    CallWapper callWapper;
    using executeAppFun = void(*)(long long paramter_1,...);
    char current_absolute_path[255];
    if (nullptr == realpath("./", current_absolute_path))
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
    std::vector<std::string> presetNcoValues{ {"TX0, 1900000,-100000"},{"TX1, 2900000,-200000"},{"TX2, 3900000,-300000"}};
    for(auto item:presetNcoValues)
    {

        uint8_t txChannel = std::stoul(item.substr(2,1));
        uint8_t pos  = item.find_last_of(',');
        std::string ncoFreqAdcInclude = item.substr(0, pos);
        int32_t ncoFreqDatapath = std::stoll(item.substr(pos+1));
        std::cout << "ncoFreqDatapath: " << ncoFreqDatapath << std::endl;
        pos = ncoFreqAdcInclude.find_last_of(',');
        int32_t ncoFreqAdc = std::stoll(ncoFreqAdcInclude.substr(pos+1));
        std::cout << "ncoFreqAdc: " << ncoFreqAdc << std::endl;
    }
    int index{0};
    std::string linkStr{"LT radon:x 0 PT radonSerdes:0.0 3 2 1 0 PT radonSerdes:0.1 7 6 5 4 LR jesd204AllLayersRxLinkPalau:0.0 0"};
    processLinkSpecification(index,linkStr);

    charPoniterToStr("string_view test");
    adrv903xLoName loname{};

    
}
