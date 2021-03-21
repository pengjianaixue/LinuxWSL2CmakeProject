#include<stdio.h>



int main()
{
    char buf[] = {"this is buf"};
    FILE* fileHandle = fopen("./Test.data","w+");
    printf("%ld\n", sizeof(buf));
    printf("%s\n", buf);
    if (fwrite(buf,sizeof(char),sizeof(buf)-1,fileHandle) <=0)
        printf("write failed!");
    return 0;

}