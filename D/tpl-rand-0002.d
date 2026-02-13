/*
--- TEXTPATGEN-QUICKSCRIPT-D ---

 This QuickScript generates random data.

 Users can change the output by editing
 this file directly.

*/

module tpl_rand_0002;
import std.stdio, std.conv, std.string, std.format, std.random;

int num, finish, width, size, randnum, randmin, randmax, randseed;
File fp;

void main(string[] args)
{
/* Please change the values to suit your preferences */
  finish=99;
  width=10;
  randmin=0;
  randmax=99999;
  randseed=100;

  auto gen=Random(randseed);

  fp=File("00_.txt","w");  /* Open file for writing, please set the filename */
  fp.writef("TEXTPATGEN-QUICKSCRIPT-D\n");

  for (num=0; num<=finish; num++)
  {
    for (size=0; size<width-1; size++)
    {
      if (num == finish) break;
      randnum=uniform(randmin, randmax, gen);  /* Get the random number */
      fp.writef("D-%05d ", randnum);  /* Print this number */
      num++;
    }
    randnum=uniform(randmin, randmax, gen);  /* Get the random number */
    fp.writef("D-%05d\n", randnum);  /* Print this number */
  }
}



