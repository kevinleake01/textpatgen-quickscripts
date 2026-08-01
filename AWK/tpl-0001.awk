# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  num = 0;
  for (len = 0; len < 16; len++)
  {
    for (wid = 0; wid < 15; wid++)
    {
      printf("X-%04X ", num);
      num++;
    }
    printf("X-%04X\n", num);
    num++;
  }
}

