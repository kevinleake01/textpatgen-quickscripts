-- TEXTPATGEN-QUICKSCRIPT-LUA
-- Please edit this file to suit your preferences.
-- The text is written to a timestamped file.

filename = os.date("00_%Y%m%d_%H%M%S.txt")
file = io.open(filename, "w")
introstr = os.date("TEXTPATGEN-QUICKSCRIPT-LUA: %Y-%m-%dT%H:%M:%S%z\n")
file:write(introstr)
n3 = 0
for n1 = 0, 9 do
  for n2 = 0, 8 do
    str = string.format("D-%05d ", n3)
    file:write(str)
    n3 = n3 + 1
    end 
  str = string.format("D-%05d\n", n3)
  file:write(str)
  n3 = n3 + 1
end
file:close()
