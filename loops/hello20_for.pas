program hello20_for;
const 
    message = 'Hello, world!';
    times = 20;
var
    counter: integer;
begin
    for counter := 1 to times do
        writeln(message);
end.

