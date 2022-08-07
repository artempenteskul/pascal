program helloCrt;
uses crt;

const
    message = 'Hello, world!';
    delayDuration = 5000;

var
    x, y: integer;

begin
    clrscr;
    x := (ScreenWidth - length(message)) div 2;
    y := ScreenHeight div 2;
    GotoXY(x, y);
    write(message);
    GotoXY(1, 1);
    delay(delayDuration);
    clrscr;
end.

