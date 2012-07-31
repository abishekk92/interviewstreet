#include<stdio.h>
int main()
{
long int a[100000]={0};
long int b[100000];
long int n,k,q,m,i,count;
count=0;
scanf("%ld %ld",&n,&k);
for(q=0; q<n; q++)
{
scanf("%ld",&b[q]);
m=b[q];
a[m]=1;
}
for(i=0; i<n; i++)
{
m=b[i];
m=m+k;
if(a[m]==1)
{
count++;
a[m]=0;
}
}
printf("%ld",count);
return 0;
}
