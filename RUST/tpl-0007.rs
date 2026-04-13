// -- TEXTPATGEN-QUICKSCRIPT-RUST
// -- Please edit this file to suit your preferences.

use std::fs::File;
use std::io::Write;

fn main() -> std::io::Result<()> {
  let mut file = File::create("00_.txt")?;  // Please set the filename
  write!(file, "TEXTPATGEN-QUICKSCRIPT-RUST\n")?;
  let mut n2 = 0;
  for _n1 in 0..25 {
    write!(file, "X-{:04X}:The Quick Brown Fox Jumps over the Lazy Dog:D-{:05}\n", n2, n2)?;
    n2 = n2 + 1;
  }
  file.flush()?;
  Ok(())
}

