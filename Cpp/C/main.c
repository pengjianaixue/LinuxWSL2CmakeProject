#include<stdio.h>



int main()
{
    const char *strBuf = "this is buf";
    strBuf = "which is reset the char pointer address";
    char buf[] = {"this is buf"};
    buf[0] = 't';
    FILE* fileHandle = fopen("./Test.data","w+");
    printf("%ld\n", sizeof(buf));
    printf("%s\n", buf);
    printf("%s\n", strBuf);
    if (fwrite(buf,sizeof(char),sizeof(buf)-1,fileHandle) <=0)
        printf("write failed!");
    return 0;

}