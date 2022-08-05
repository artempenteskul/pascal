program char2num;

function readLongint(var result: longint): boolean;
var
    c: char;
    res: longint;
    pos: integer;
begin
    res := 0;
    pos := 0;
    repeat
        read(c);
        pos := pos + 1
    until (c <> ' ') and (c <> #10);
    while (c <> ' ') and (c <> #10) do
    begin
        if (c < '0') or (c > '9') then
        begin
            writeln('Unexpected ''', c, ''''' in pos: ', pos);
            readln;
	    readLongint := false;
            exit
	end;
        res := res * 10 + ord(c) - ord('0');
        read(c);
        pos := pos + 1
    end;
    result := res;
    readLongint := true
end;

var
   x, y: longint;
   ok: boolean;
begin
    repeat
        write('Please type the first number: ');
        ok := readLongint(x);
    until ok;
    repeat 
        write('Please type the second number: ');
        ok := readLongint(y); 
    until ok;
    writeln(x, ' times ', y, ' is ', x * y);
end.
