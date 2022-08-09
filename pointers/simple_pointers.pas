program simplePointers;

var
    p: ^integer;
    q: ^real;
    ap: pointer;

begin
    p^ := 22;
    writeln(p^);
end.

