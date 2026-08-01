# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  num = 0;
  for (len = 0; len < 20; len++)
  {
    for (wid = 0; wid < 19; wid++)
    {
      printf("+");
      num++;
    }
    printf("+\n");
    num++;
  }
}

