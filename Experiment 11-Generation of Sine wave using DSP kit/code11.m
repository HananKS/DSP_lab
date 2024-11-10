#include<stdio.h>
#include<math.h>
#define pi 3.1415625
float a[200];
main()
{
int i=0;
for(i=0;i<200;i++)
a[i]=sin(2*pi*5*i/200);
}