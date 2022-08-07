program pow;

procedure Powers(x: real; var quad, cube, fourth, fifth: real);
begin
    quad := x * x;
    cube := quad * x;
    fourth := cube * x;
    fifth := fourth * x;
end;

var
    num: real;
    quad, cube, fourth, fifth: real;
begin 
    write('Enter num to get five its powers: ');
    readln(num);
    Powers(num, quad, cube, fourth, fifth);
    writeln('Quad = ', quad);
    writeln('Cube = ', cube);
    writeln('Fourth = ', fourth);
    writeln('Fifth = ', fifth);
end.

