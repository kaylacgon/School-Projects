/* Description: 10.2 Exercise 1a */

#include <stdio.h>
#include <stdlib.h>

int main()

{
 
  FILE *outFile; 
  char strng[81];


  outFile = fopen("text.dat", "w");

  if(outFile == NULL){

    printf("\nFailed to open the file.\n");

    exit(1);

  }

  printf("Enter lines of text to be stored in the file.\n");

  printf("Enter a carriage return only to terminate input.\n\n");


  fgets(strng, 81, stdin);

  while(*strng != '\n') {

    fputs(strng, outFile);
    putc('\n', outFile); 
    
    fgets(strng, 81, stdin);

  }

  fclose(outFile);

  printf("End of data input.");

  printf("\nThe file has been written.");

  return 0;

}