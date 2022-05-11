#include<stdio.h>

int main()

{
 float celsius;
 float fahrenheit;
 fahrenheit = 86.5;
 celsius = 5.0/9.0*(fahrenheit - 32.0);
 printf("The celsius equivalent of %5.2f degrees fahrenheit\n",fahrenheit);
 printf("is %5.2f degrees\n", celsius);
 return 0;
}

 