#pragma once
#include <string>
#include <vector>
#include <initializer_list>
#include <sstream>
#include <iostream>
#include <algorithm>
// #include <xpai_xte_if_trace_obj.h>
// #include "util.h"

class DebugTracer
{
public:
    DebugTracer(std::initializer_list<std::string> recordInfo);
    ~DebugTracer();
    inline void printPoniter(std::initializer_list<std::string> recordInfo)
    {
        std::vector<std::string> recordVec(recordInfo.begin(),recordInfo.end());
        std::ostringstream recordStringStream{};
        if (!m_file.empty() && !m_function.empty())
        {
            for (auto str : recordVec)
            {
                recordStringStream << str << " ";
            }
            std::string recordString{ recordStringStream.str() };
            recordStringStream.clear();
            recordStringStream << "Record pointer in: " << "File: " << m_file << "Function: " << m_function << " "<< recordString << std::endl;
            printToLogAndConsole(recordStringStream.str());
        }
        else
        {
            for (auto str : recordVec)
            {
                recordStringStream << str << " ";
            }
            std::string recordString{ recordStringStream.str() };
            recordStringStream.clear();
            recordStringStream << "Record print: " << recordString << std::endl;
            printToLogAndConsole(recordStringStream.str());
        }
    }

private:
    std::string m_file;
    std::string m_function;
    std::vector<std::string> m_recordInfo;
    inline void printToLogAndConsole(std::string printString)
    {
        std::cout << printString;
        // INFO(printString.c_str());
    }

};

