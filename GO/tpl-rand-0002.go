/*
--- TEXTPATGEN-QUICKSCRIPT-GO ---

 This QuickScript generates random data.

 Users can change the output by editing
 this file directly.

 The text is written to a timestamped file.

*/

package main

import (
  "fmt"
  "os"
  "strconv"
  "math/rand"
  "time"
)

var num int64;
var finish int64;
var width int64;
var size int64;
var randnum int64;
var randmin int64;
var randmax int64;
var randseed int64;

func main() {
/* Please change the values in finish, width, randmin,
  randmax, and randseed to suit your preferences. */
  finish:=int64(100);
  width:=int64(10);
  randmin:=int64(0);
  randmax:=int64(99999);
  randseed:=int64(100);

  rand.Seed(randseed);

  now := time.Now();  /* Get the time */
  epoch := now.Unix();  /* Use Epoch Time */
  epochstr := strconv.FormatInt(epoch, 10); /* Convert this to a string */

  fpo,_:=os.Create("00_" + epochstr + ".txt");
  fmt.Fprintf(fpo, "TEXTPATGEN-QUICKSCRIPT-GO: %s\n", now.Format(time.RFC3339));
 
  for num:=int64(1); num<=finish; num++   {
    for size:=int64(0); size<width-1; size++ {
      if (num == finish) {
        break;
      }
      randnum=random(randmin, randmax);  /* Get the random number */
      fmt.Fprintf(fpo, "D-%05d ", randnum);  /* Print this number */
      num++;
    }
    randnum=random(randmin, randmax);  /* Get the random number */
    fmt.Fprintf(fpo, "D-%05d\n", randnum);  /* Print this number */
  }
  fpo.Close();
}

func random(randmin int64, randmax int64) int64 {
    return rand.Int63n(randmax-randmin) + randmin;
}

