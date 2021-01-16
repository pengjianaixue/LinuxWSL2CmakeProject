#include "../inc/debugTracer.h"

DebugTracer::DebugTracer(std::initializer_list<std::string> recordInfo) :m_recordInfo(recordInfo.begin(),recordInfo.end())
{
    std::ostringstream recordStringStream{};
    if (m_recordInfo.size() > 1)
    {
        m_file = m_recordInfo[0];
        m_function = m_recordInfo[1];
        m_recordInfo.erase(m_recordInfo.begin(), m_recordInfo.begin()+2);
        //std::copy(m_recordInfo.begin() + 2, m_recordInfo.end(), m_recordInfo.begin());
        
        for (auto str : m_recordInfo)
        {
            recordStringStream << str << " ";
        }
        std::string recordString{ recordStringStream.str() };
        recordStringStream.clear();
        recordStringStream << "Enter:\n\t" << "File: " << m_file << " Function: " << m_function << " " << recordString << std::endl;
        printToLogAndConsole(recordStringStream.str());
    }
    else
    {
        for (auto str : m_recordInfo)
        {
            recordStringStream << str << " ";
        }
        printToLogAndConsole(recordStringStream.str());
    }

}

DebugTracer::~DebugTracer()
{
    if (!m_file.empty() && !m_function.empty())
    {
        std::ostringstream recordStringStream{};
        recordStringStream << "Leave:\n\t" << "File: " << m_file << " Function: " << m_function << std::endl;
        printToLogAndConsole(recordStringStream.str());
    }
}

