program easy_types;
type
    digit10 = 0..9;
    latinCaps = 'A'..'Z';
    rainbowColors = (red, orange, yellow, green, blue, indigo, violet);
var
    digit: digit10;
    latinCapitalLetter: latinCaps;
    rainbowColor: rainbowColors;
begin
    digit := 3;
    latinCapitalLetter := 'O';
    rainbowColor := indigo; 
    writeln(digit);
    writeln(latinCapitalLetter);
    writeln(rainbowColor);
end.

