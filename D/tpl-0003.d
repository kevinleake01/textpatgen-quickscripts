/*
 -- TEXTPATGEN-QUICKSCRIPT-D --

 Users can change the output by editing
 this file directly.

*/

module tpl_0003;
import std.stdio, std.conv, std.string, std.format;

int num, start, finish;
File fp;

void main(string[] args)
{
  start=1;  /* Start line */
  finish=25;  /* Finish line */

  fp=File("00_.txt","w"); /* Open file for writing, please set the filename */
  fp.writef("TEXTPATGEN-QUICKSCRIPT-D\n");
  for (num=start; num<=finish; num++)
  {
    fp.writef("%04X:The Quick Brown Fox Jumps Over The Lazy Dog:%05d\n", num, num);
  }
  fp.close();
}

