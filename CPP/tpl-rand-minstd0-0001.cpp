/* --- TEXTPATGEN-QUICKSCRIPT-C++ ---

 This QuickScript generates random data.

 Users can change the output by editing
 this file directly.

 The text is written to a timestamped file.

*/

// ----- Written in ISO/IEC 14882:2011 standard C++

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <random>

long int num, finish, width, size, randnum, randmin, randmax, randseed;
FILE *fp;

/* Timestamp info */
time_t timer;
char buffer1[32], buffer2[32];
struct tm* tm_info;

int main(int argc, char* argv[])
{
// Please change the values in finish, width, randmin,
// randmax, and randseed to your preferences.
  finish=256;
  width=16;
  randmin=0;
  randmax=65535;
  randseed=100;

  /* Random number generator, requires C++11 or later */
  std::minstd_rand0 generator(randseed);
  std::uniform_int_distribution<long> distribution(randmin,randmax);

  std::time(&timer);  /* get the time */
  tm_info=std::localtime(&timer);

  std::strftime(buffer1, 32, "%Y-%m-%dT%H:%M:%S%z", tm_info); /* Timestamp to print */
  std::strftime(buffer2, 32, "00_%Y%m%d_%H%M%S.txt", tm_info); /* Timestamp for filename */

  fp=std::fopen(buffer2,"w");  /* Open file for writing */
  std::fprintf(fp,"TEXTPATGEN-QUICKSCRIPT-C++: %s\n", buffer1);

  for (num=1; num<=finish; num++)
  {
    for (size=0; size<width-1; size++)
    {
      if (num == finish) break;
      randnum=distribution(generator);  /* Get the random number */
      std::fprintf(fp,"X-%04lX ", randnum);  /* Print this number */
      num++;
    }
    randnum=distribution(generator);  /* Get the random number */
    std::fprintf(fp,"X-%04lX\n", randnum);  /* Print this number */
  }
  fclose(fp);
  return 0;
}



