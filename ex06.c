#include <stdio.h>

#define MAXCOUNT 4

int main()

{


    float tempConvert(float, char);
 

    int count;

    float celsius, fahren;

    for(count = 1; count <= MAXCOUNT; count++)

    {

        printf("\nEnter a Fahrenheit temperature: ");

        scanf("%f",&fahren);

        celsius = tempConvert(fahren, 'f');

        printf("The Celsius equivalent is %5.2f\n", celsius);

    }

    return 0;

}

float tempConvert(float inTemp, char character)

{
if (character == 'f')
{
  return ( (5.0/9.0) * (inTemp - 32.0) );
}
else{
  return ( (inTemp* (9.0/5.0)) + 32.0);
}

return 0;
}

