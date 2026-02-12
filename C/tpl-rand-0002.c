/* --- TEXTPATGEN QUICKSCRIPT-C ---

 This QuickScript generates random data.

 Users can change the output by editing
 this file directly.

 The text is written to a timestamped file.

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char *argv[]);

long int num, finish;
long int width, size;
int randnum1, randnum2, randnum3, randnum4;
unsigned int randnum5;
FILE *fp;

/* Timestamp info */
time_t timer;
char buffer1[32], buffer2[32], buffer3[32];
struct tm* tm_info;

int main(int argc, char *argv[])
{
/* Please set the values listed here to suit your preferences */
  finish=100; /* Total list of numbers to print */
  width=10;   /* Numbers in a line */
  randnum3=99999; /* Highest printable number */
  randnum4=100; /* Random number seed */

  srand(randnum4);  /* Generate random number seed */

  time(&timer);  /* get the time */
  tm_info=localtime(&timer);

  strftime(buffer1, 32, "%Y-%m-%dT%H:%M:%S%z", tm_info); /* ISO-8601 Timestamp */
  strftime(buffer2, 32, "00_%Y%m%d_%H%M%S.txt", tm_info); /* Timestamp for filename */

  fp=fopen(buffer2,"w");  /* Open file for writing */
  fprintf(fp,"TEXTPATGEN-QUICKSCRIPT-C: %s\n", buffer1);

  for (num=1; num<=finish; num++)
  {
    for (size=0; size<width-1; size++)
    {
      if (num == finish) break;
      randnum2=rand();  /* Put random number into randnum2 */
      randnum5=(unsigned int)(randnum2%randnum3); /* Generate the highest printable number */
      fprintf(fp,"D-%05ld ", randnum5);  /* Print this number */
      num++;
    }
    randnum2=rand();  /* Put random number into randnum2 */
    randnum5=(unsigned int)(randnum2%randnum3); /* Generate the highest printable number */
    fprintf(fp,"D-%05ld\n", randnum5);  /* Print this number */
  }
  fclose(fp);
  return 0;
}

