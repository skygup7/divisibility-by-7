//////////////////////////////////////////////////////////////////////////////////////////
//              GroupID-50 (15114004_15114006) - AKASH GUPTA & AMAN AGARWAL
//              Date: November 1, 2016
//              divisible_7.c - Program to check divisibility by 7.
////////////////////////////////////////////////////////////////////////////////////////////
#include<stdio.h>

int main()
{
    int n,temp;
    scanf("%d",&n);
    while(n>7)
    {
        temp=n%10;
        n=n/10;
        n=n-2*temp;
    }
    while(n<1)
        n+=7;
    if(n==7)
        printf("Divisible by 7\n");
    else
        printf("Not Divisible by 7\n");
    return 0;
}
