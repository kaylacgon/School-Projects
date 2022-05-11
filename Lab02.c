/* 
  Introduction to Computer Programming for Non-CS Majors
  CSCI-1151; Spring 2020
  Programming Assignment #2
    
  Description: The program allows the user to input some of
               the information that normally appears on a
               tax form, then it calculates a tax bill
               according to the formulas as described in the
               problem statement


  Author:     Kayla Gonzales
  Date:        02/16/2020
*/

#include<stdio.h>
int main()
{
  int exempt;
  float salary, intIncome, gains, charity, totalIncome,
    adjIncome, totalTax;

  printf("Enter number of Exemptions: \n");
  scanf("%d", &exempt);

  printf("Enter gross Salary: \n");
  scanf("%f", &salary);

  printf("Enter Interest Income: \n");
  scanf("%f", &intIncome);

  printf("Enter Capital Gains: \n");
  scanf("%f", &gains);

  printf("Enter Charitable Contributions: \n");
  scanf("%f", &charity);

  printf("\n");

  printf("Number of exemptions: %d \n", exempt);
  printf("Gross Salary: %.2f \n", salary);
  printf("Interest Income: %.2f \n", intIncome);
  printf("Capital Gains: %.2f \n", gains);
  printf("Charitable Contributions: %.2f \n", charity);
  
  printf("\n");

  totalIncome = salary + intIncome + gains;
  adjIncome = totalIncome - (exempt*1500.00) - charity;

  printf("Total Income: $%13.2f\n", totalIncome);
  printf("Adjusted Income: $%10.2f\n", adjIncome);

  totalTax = 0;

  if(adjIncome > 50000)
    {
      totalTax += (.28 * (adjIncome - 50000.00) );
    }
  if(adjIncome > 32000)
    {
      totalTax += (.23 * (50000.00 - 32000.00) );
    }
  if(adjIncome > 10000)
    {
      totalTax += (.15 * (32000.00 - 10000.00) );
    }

  printf("Total Tax: $%16.2f \n", totalTax);

  return 0;
}
