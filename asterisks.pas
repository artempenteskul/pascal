program asterisks;
var
    n, m: integer;
begin
    for n := 1 to 24 do
    begin
        { it is a comment in pascal }
	for m := 1 to n - 1 do
	    write(' ');
	writeln('*')
    end
end.
