/*
--- TEXTPATGEN-QUICKSCRIPT-D ---

 Users can change the output by editing
 this file directly.

*/

module tpl_0002;
import std.stdio, std.format, std.string;

int num, start, finish;
int width, size;
string message="D-";  /* Message text */
string separator=" ";  /* Separator text */
File fp;

void main(string[] args)
{
  start=0;  /* Start number */
  finish=99; /* Finish number */
  width=10;  /* Numbers in a line */

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
      fp.writef("%s", message);
      fp.writef("%05d", num);  /* Number base format */
      fp.writef("%s", separator);
      num++;
    }
    fp.writef("%s", message);
    fp.writef("%05d\n", num);  /* Number base format */
  }
}

