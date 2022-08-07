program cube;

function Cube(x: integer): longint;
begin
    Cube := x * x * x
end;

var
    num: integer;
    res: longint;
begin
    repeat
        write('Enter the real number to get cube of this number: ');
        readln(num);
    until (num > 0); 
    res := Cube(num);
    writeln('Result: ', res);
end.

