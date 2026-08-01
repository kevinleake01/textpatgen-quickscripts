# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  num = 0;
  for (len = 0; len < 10; len++)
  {
    for (wid = 0; wid < 9; wid++)
    {
      printf("D-%05d ", num);
      num++;
    }
    printf("D-%05d\n", num);
    num++;
  }
}

