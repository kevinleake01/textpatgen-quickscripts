// -- TEXTPATGEN-QUICKSCRIPT-RUST
// -- Please edit this file to suit your preferences.

use std::fs::File;
use std::io::Write;

fn main() -> std::io::Result<()> {
  let mut file = File::create("00_.txt")?;  // Please set the filename
  write!(file, "TEXTPATGEN-QUICKSCRIPT-RUST\n")?;
  let mut n3 = 0;
  for _n1 in 0..16 {
    for _n2 in 0..15 {
      write!(file, "X-{:04X} ", n3)?;
      n3 = n3 + 1;
    }
    write!(file, "X-{:04X}\n", n3)?;
    n3 = n3 + 1;
  }
  file.flush()?;
  Ok(())
}

