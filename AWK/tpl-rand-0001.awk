# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  srand(100);
  num = int(rand() * 65535);
  for (len = 0; len < 16; len++)
  {
    for (wid = 0; wid < 15; wid++)
    {
      printf("X-%04X ", num);
      num = int(rand() * 65535);
    }
    printf("X-%04X\n", num);
    num = int(rand() * 65535);
  }
}

