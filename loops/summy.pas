program summy;
var
   sum: integer = 0;
   x: integer;
begin
    writeln('Enter digits to get more than 1000 as a sum: ');
    repeat
        readln(x);
        sum := sum + x;
    until sum > 1000;
    writeln('Your sum is: ', sum)
end.

