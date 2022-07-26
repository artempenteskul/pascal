program temporary;
var
    a: integer;
    b: integer;
    t: integer;
begin
    read(a);
    read(b);
    if a > b then
    begin
        writeln('a is greater than b');
        writeln('swapping...');
        t := a;
        a := b;
        b := t
    end
end.

