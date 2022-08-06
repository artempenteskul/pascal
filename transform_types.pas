program transform_types;

var
    i, j: integer;
    r: real;

begin
    r := 17.62;
    i := trunc(r);
    j := round(r);
    writeln(i);
    writeln(j);
end.

