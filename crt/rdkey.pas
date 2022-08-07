program rdkey;
uses crt;

var
   c, cc: char;

begin
    repeat
        c := ReadKey;
	cc := c;
  	if (c < #32) or (cc > #126) then
	    c := '?';
	writeln(ord(c), ' (', cc, ')')
    until c = ' '
end.

