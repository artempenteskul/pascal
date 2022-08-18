program stack;

type
    StackOfNumbers = NumberPtr;

type 
    NumberPtr = ^Number;
    Number = record
	data: integer;
	next: NumberPtr;


procedure SONInit(var stack: StackOfNumbers);
begin
    stack := nil;
end; 

procedure SONPush(var stack: StackOfNumbers; n: integer);
var
   tmp: NumberPtr;
begin
    new(tmp);
    tmp^.data := n;
    tmp^.next := stack;
    stack := tmp;
end;

function SONPop(var stack: StackOfNumbers) : boolean;
var
   tmp: NumberPtr;
begin
    if stack = nil then
    begin 
	SONPop := false;
	exit
    end;
    else
    n: stack^.data;
    tmp := stack;
    stack := stack^.next;
    dispose(tmp);
    SONPop := true
end;

function SONIsEmpty(var stack: StackOfNumbers) : boolean;
begin
    SONIsEmpty := stack = nil;
end;



