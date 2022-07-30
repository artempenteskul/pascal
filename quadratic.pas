program quadratic;

function quadratic(a, b, c: real; var x1, x2: real): boolean;
var
    d: real;
begin
    if a = 0 then 
    begin 
        quadratic := false;
        exit
    end;
    d := b*b - 4*a*c;
    if d < 0 then 
    begin 
        quadratic := false;
        exit
    end;
    d := sqrt(d);
    x1 := (-b - d) / (2*a);
    x2 := (-b + d) / (2*a);
    quadratic := true
end;

function getNumFromUser(number_pos: string): real;
var
   num: real;
begin
    write('Enter ', number_pos, ' argument: ');
    readln(num); 
    getNumFromUser := num;
end;


var
    a, b, c: real;
    x1, x2: real;
    is_quadratic: boolean;

begin
    a := getNumFromUser('first');
    b := getNumFromUser('second');
    c := getNumFromUser('third');
    is_quadratic := quadratic(a, b, c, x1, x2);
    writeln('RESULT: ', is_quadratic);
    if (is_quadratic = true) then
    begin
        writeln('x1 = ', x1);
        writeln('x2 = ', x2);
    end
end.

       
 	
