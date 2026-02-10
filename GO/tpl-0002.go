/*
--- TEXTPATGEN-QUICKSCRIPT-GO ---

 Users can change the output by editing
 this file directly.

 The text is written to a timestamped file.

*/

package main

import (
  "fmt"
  "os"
  "strconv"
  "time"
)

var size int64;
var fpo *os.File;
var message string = "D-"; /* Message text */
var separator string = " ";  /* Separator text */

func main() {
  start:=int64(0);  /* Start number */
  finish:=int64(99); /* Finish number */
  width:=int64(10);  /* Numbers in a line */

  now := time.Now();  /* Get the time */
  epoch := now.Unix();  /* Use Epoch Time */
  epochstr := strconv.FormatInt(epoch, 10); /* Convert this to a string */

  fpo,_:=os.Create("00_" + epochstr + ".txt");
  fmt.Fprintf(fpo, "TEXTPATGEN-QUICKSCRIPT-GO: %s\n", now.Format(time.RFC3339));
  numgen(start, finish, size, width, fpo);
  fpo.Close();
}

func numgen(start int64, finish int64, size int64, width int64, fpo *os.File) {
  for num:=start; num<=finish; num++ {
    for size:=int64(0); size<(width - 1); size++ {
      if (num == finish) {
         break;
      }
      fmt.Fprintf(fpo, "%s", message);
      fmt.Fprintf(fpo, "%05d", num);  /* Number base format */
      fmt.Fprintf(fpo, "%s", separator);
      num++;
    }
    fmt.Fprintf(fpo, "%s", message);
    fmt.Fprintf(fpo, "%05d\n", num);  /* Number base format */
  }
}

