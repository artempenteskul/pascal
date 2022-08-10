program stack;

type
    longItemPtr = ^longItem;
    longItem = record
	data: longint;
        next: longItemPtr;
    end;

type
    stackOfLongints = longItemPtr;

procedure SOLInit(var stack: stackOfLongints);
begin
    stack := nil;
end;

procedure SOLPush(var stack: stackOfLongints; n: longint);
var
    tmp: longItemPtr;
begin
    new(tmp);
    tmp^.data := n;
    tmp^.next := stack;
    stack := tmp;
end;

function SOLPop(var stack: stackOfLongints; var n: longint) : boolean;
var
    tmp: longItemPtr;
begin
    if stack = nil then
    begin
        SOLPop := false;
        exit
    end;
    n := stack^.data;
    tmp := stack;
    stack := stack^.next;
    dispose(tmp);
    SOLPop := true;
end;

function SOLIsEmpty(var stack: stackOfLongints) : boolean;
begin
    SOLIsEmpty := stack = nil;
end;

begin
    writeln('Stack interface example');
end.




















