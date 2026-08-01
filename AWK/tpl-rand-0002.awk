# --- TEXTPATGEN QUICKSCRIPT-AWK ---

# Users can change the output by editing
# this file directly.

BEGIN {
  printf("TEXTPATGEN-QUICKSCRIPT-AWK\n");
  srand(100);
  num = int(rand() * 9999);
  for (len = 0; len < 10; len++)
  {
    for (wid = 0; wid < 9; wid++)
    {
      printf("D-%04d ", num);
      num = int(rand() * 9999);
    }
    printf("D-%04d\n", num);
    num = int(rand() * 9999);
  }
}

