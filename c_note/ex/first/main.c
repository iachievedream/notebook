#include<stdio.h>
#include<stdlib.h>
int main()                                  //�D�{���}�Y
{
    int i,j,tmp;
    int data[8]={12,56,78,34,75,86,34,24};
    printf("��w�ƧǪk�G\n��l��ơG");
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
        printf("��%d���Ƨǫ᪺���G�O�G",i);
        for(j=0;j<8;j++)
            printf("%3d",data[j]);
        printf("\n");
    }
    printf("�ƧǪ����G���G");
    for(i=0;i<8;i++)
        printf("%3d",data[i]);
    printf("\n");
    system("pause");
    return 0;                                   //�^�ǭȬ��s
}
