# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  num = 0;
  for (len = 0; len < 25; len++)
  {
    printf("%04X:The_Quick_Brown_Fox_Jumps_over_the_Lazy_Dog:%05d\n", num, num);
    num++;
  }
}

