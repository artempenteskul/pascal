program symbol_ord;
var 
    c: char;
    n: integer;
begin
    write('Enter any ASCII symbol to get its ord num: ');
    read(c);
    n := ord(c);
    writeln('Your symbol: ', c);
    writeln('Its ord num: ', n);
end.

