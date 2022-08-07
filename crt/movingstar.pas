program movingStar;
uses crt;

const
    delayDuration = 70;

type
    star = record
    	curX, curY, dx, dy: integer;
    end;

procedure showStar(var s: star);
begin
    GotoXY(s.curX, s.curY);
    write('*');
    GotoXY(1, 1);
end;

procedure hideStar(var s: star);
begin
    GotoXY(s.curX, s.curY);
    write(' ');
    GotoXY(1, 1);
end;

procedure moveStar(var s: star);
begin
    hideStar(s);
    s.curX := s.curX + s.dx;
    if s.curX > ScreenWidth then
	s.curX := 1
    else
    if s.curX < 1 then
	s.curX := ScreenWidth;
    s.curY := s.curY + s.dy;
    if s.curY > ScreenHeight then 
        s.curY := 1
    else
    if s.curY < 1 then
	s.curY := ScreenHeight;
    showStar(s);
end;

procedure setDirection(var s: star; dx, dy: integer);
begin
    s.dx := dx;
    s.dy := dy;
end;

procedure handleArrowKey(var s: star; extcode: char);
begin
    case extcode of
	#75: setDirection(s, -1, 0);
	#77: setDirection(s, 1, 0);
	#72: setDirection(s, 0, -1);
	#80: setDirection(s, 0, 1);
    end
end;

var
   s: star;
   ch: char;

begin
    clrscr;
    s.curX := ScreenWidth div 2;
    s.curY := ScreenHeight div 2;
    s.dx := 0;
    s.dy := 0;
    showStar(s);
    while true do
    begin
	if not KeyPressed then
	begin
	    moveStar(s);
	    delay(delayDuration);
   	    continue;
	end;
	ch := ReadKey;
	case ch of
	    #0: begin
		ch := ReadKey;
		handleArrowKey(s, ch)
	    end;
	    ' ': setDirection(s, 0, 0);
	    #27: break;
  	end
    end;
    clrscr;
end.

  
