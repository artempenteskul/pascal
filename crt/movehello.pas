program movingHello;
uses crt;

const
    message = 'Hello, world!';

procedure showMessage(x, y: integer; msg: string);
begin
    GotoXY(x, y);
    write(msg);
    GotoXY(1, 1);
end;

procedure hideMessage(x, y: integer; msg: string);
var
    len, i: integer;
begin
    len := length(msg);
    GotoXY(x, y);
    for i := 1 to len do
	write(' ');
    GotoXY(1, 1);
end;

procedure moveMessage(var x, y: integer; msg: string; dx, dy: integer);
begin
    hideMessage(x, y, msg);
    x := x + dx;
    y := y + dy;
    showMessage(x, y, msg);
end;

var
    curX, curY: integer;
    ch: char;
begin
    clrscr;
    curX := (ScreenWidth - length(message)) div 2;
    curY := ScreenHeight div 2;
    showMessage(curX, curY, message);
    while true do
   	begin
	    ch := ReadKey;
 	    if ch <> #0 then
		break;
	    ch := ReadKey;
	    case ch of
		#75:
		    moveMessage(curX, curY, message, -1, 0);
		#77:
		    moveMessage(curX, curY, message, 1, 0);
	 	#72:
		    moveMessage(curX, curY, message, 0, -1);
		#80:
		    moveMessage(curX, curY, message, 0, 1);
	    end
	end;
	clrscr;
end.

