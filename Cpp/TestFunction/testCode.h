
#include<string>
#include<vector>
#include<map>
#include<deque>
#include<sstream>
#include<string_view>

std::vector<std::string> tokenize(const std::string& str, const std::string& delimiters)
{
    std::vector<std::string> tokens;
    // preallocate elements so malloc is called less
    //tokens.reserve(8);
    // Always return empty list if no tokens found
    //tokens.clear();
    // Skip delimiters at beginning.
    std::string::size_type lastPos = str.find_first_not_of(delimiters, 0);
    // Find first "non-delimiter".
    std::string::size_type pos     = str.find_first_of(delimiters, lastPos);

    while (pos != std::string::npos || lastPos != std::string::npos)
    {
        // Found a token, add it to the std::vector.
        tokens.emplace_back(str.substr(lastPos, pos - lastPos));
        // Skip delimiters.  Note the "not_of"
        lastPos = str.find_first_not_of(delimiters, pos);
        // Find next "non-delimiter"
        pos = str.find_first_of(delimiters, lastPos);
    }
    return tokens;
}
void processLinkSpecification(const uint8_t linkIndex, const std::string &linkStr)
{
    std::vector<std::string> paramVec = tokenize(linkStr, " ");
    std::multimap<std::string, std::deque<std::string>> linkMap;

    if (paramVec.empty())
    {
        return;
    }

    // Separate parts into different queues to be processed later
    std::string key;
    std::deque<std::string> tmpDeque{};
    for (auto i = 0u; i < paramVec.size(); i++)
    {
        if ("LT" == paramVec[i] || "PT" == paramVec[i] || "LR" == paramVec[i] || "PR" == paramVec[i])
        {
            if (key.size())  // Insert previous LT/PT/LR/PR
            {
                linkMap.insert(std::pair<std::string, std::deque<std::string>>(key, tmpDeque));
                tmpDeque.clear();
            }
            key = paramVec[i];
        }
        else
        {
            tmpDeque.push_back(paramVec[i]);
        }
    }

    if (key.size())  // insert the last LT/PT/LR/PR
    {
        linkMap.insert(std::pair<std::string, std::deque<std::string>>(key, tmpDeque));
    }
    tmpDeque.clear();
    for (auto& kv : linkMap)
    {
        if (kv.second.empty())
        {
           
            return;
        }

        std::string drvName = kv.second.front();
        kv.second.pop_front();
        std::vector<int> resourceNumbers;
        while (!kv.second.empty())
        {
            uint32_t val = 0;
            std::stringstream s(kv.second.front());
            if (!(s >> val))
            {
                return;
            }
            resourceNumbers.push_back(static_cast<int>(val));
            kv.second.pop_front();
        }
        auto fn =  [&]{
            std::cout << "drvName: " << drvName << ":";
            for (auto &&i : resourceNumbers)
            {
                std::cout << i << " ";
            }
            std::cout << std::endl;
        };
        fn();
        
    }
    linkMap.clear();
}
void charPoniterToStr(const char* charArray)
{

    std::string_view stringView{charArray};
    std::cout << stringView << std::endl;

}
using adrv903xLoName = enum adrv903xLoName_e : uint8_t
{
    ADRV903X_LO0,         
    ADRV903X_LO1,         
    ADRV903X_CLK_PLL,
    ADRV903X_SERDES_PLL_LOCK,
};