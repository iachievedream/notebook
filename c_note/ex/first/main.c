#include<stdio.h>
#include<stdlib.h>
int main()                                  //主程式開頭
{
    int i,j,tmp;
    int data[8]={12,56,78,34,75,86,34,24};
    printf("氣泡排序法：\n原始資料：");
    for (i=0;i<8;i++)
        printf("%3d",data[i]);
    printf("\n");
    for(i=7;i>=0;i--)
    {
        for(j=0;j<i;j++)
        {
            if(data[j]>data[j+1])
            {
                tmp=data[j];
                data[j]=data[j+1];
                data[j+1]=tmp;
            }
        }
        printf("第%d次排序後的結果是：",i);
        for(j=0;j<8;j++)
            printf("%3d",data[j]);
        printf("\n");
    }
    printf("排序的結果為：");
    for(i=0;i<8;i++)
        printf("%3d",data[i]);
    printf("\n");
    system("pause");
    return 0;                                   //回傳值為零
}
