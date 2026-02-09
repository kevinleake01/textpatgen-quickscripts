/* --- TEXTPATGEN-QUICKSCRIPT-C++ ---

 Users can change the output by editing
 this file directly.

 The text is written to a timestamped file.

*/

#include <iostream>
#include <fstream>
#include <iomanip>
#include <ctime>

using namespace std;

int main(int argc, char *argv[])
{

  int num, length, width;
  ofstream outfile;

  /* Timestamp info */
  time_t timer;
  char buffer1[32], buffer2[32];
  struct tm* tm_info;

  std::time(&timer);  /* get the time */
  tm_info=std::localtime(&timer);

  std::strftime(buffer1, 32, "%Y-%m-%dT%H:%M:%S%z", tm_info); /* Timestamp to print */
  std::strftime(buffer2, 32, "00_%Y%m%d_%H%M%S.txt", tm_info); /* Timestamp for filename */

  outfile.open(buffer2, ios_base::out);  /* Open file for writing */
  outfile.setf(ios_base::uppercase);  /* Use uppercase for Hex numbers */
  outfile << "TEXTPATGEN-QUICKSCRIPT-C++: " << buffer1 << "\n";
  num=0;
  for (length=0; length<16; length++)
  {
    for (width=0; width<15; width++)
    {
      outfile << "X-";
      outfile << setbase(16) << setw(4) << setfill('0') << num;
      outfile << " ";
      num++;
    }
    outfile << "X-";
    outfile << setbase(16) << setw(4) << setfill('0') << num << endl;
    num++;
  }
  outfile.close();
  return 0;
}

