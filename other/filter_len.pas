program filterLen;
var
   c: char;
   counter: integer;
begin
    counter := 0;
    while not eof do
    begin
        read(c);
        if c = #10 then
        begin
            writeln(counter);
            counter := 0;
        end
        else
            counter := counter + 1
    end
end.

