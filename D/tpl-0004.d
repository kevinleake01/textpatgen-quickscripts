/*
--- TEXTPATGEN-QUICKSCRIPT-D ---

 Users can change the output by editing
 this file directly.

*/

module tpl_0004;
import std.stdio, std.format, std.string;

int num, start, finish;
int width, size;
File fp;

void main(string[] args)
{
  start=0;  /* Start number */
  finish=499; /* Finish number */
  width=25;  /* Numbers in a line */

  fp=File("00_.txt","w");  /* Open file for writing, please set the filename */
  fp.writef("TEXTPATGEN-QUICKSCRIPT-D\n");
  numgen(start, finish, size);
  fp.close();
}

void numgen(int start, int finish, int size)
{
  for (num=start; num<=finish; num++)
  {
    for (size=0; size<width-1; size++)
    {
      if (num == finish) break;
      fp.writef("+");
      num++;
    }
    fp.writef("+\n");
  }
}

