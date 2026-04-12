-- TEXPATGEN-QUICKSCRIPT-LUA
-- Please edit this file to suit your preferences.
-- The text is written to a timestamped file.

filename = os.date("00_%Y%m%d_%H%M%S.txt")
file = io.open(filename, "w")
introstr = os.date("TEXPATGEN-QUICKSCRIPT-LUA: %Y-%m-%dT%H:%M:%S%z\n")
file:write(introstr)
math.randomseed(100)
n3 = math.random(0, 99)
for n1 = 0, 10 do
  for n2 = 0, 9 do
    str = string.format("%02d ", n3)
    file:write(str)
    n3 = math.random(0, 99)
    end 
  str = string.format("%02d\n", n3)
  file:write(str)
  n3 = math.random(0, 99)
end
file:close()

