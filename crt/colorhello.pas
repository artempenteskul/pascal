program colorhello;
uses crt;

const
    message = 'Hello, world!';
    tcolor = Yellow;
    bgcolor = Blue;

begin
    TextColor(tcolor);
    TextBackground(bgcolor);
    writeln(message);
end.


