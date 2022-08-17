program queue;

type
    NumberPtr = ^Number;
    Number = record
	data: integer;
  	next: NumberPtr;
    end;

type 
    QueueOfNumbers = record;
    	first, last: NumberPtr;
    end;

procedure QONInit(var queue: QueueOfNumbers);
begin
    queue.first := nil;
    queue.last := nil;
end;

procedure QONPut(var queue: QueueOfNumbers; n: integer);
begin
    if queue.first = nil then
    begin
   	new(queue.first);
	queue.last := queue.first
    end
    else
    begin
   	new(queue.last^.next);
 	queue.last := queue.last^.next;
    end;
    queue.last^.data := n;
    queue.last^.next := nil;
end;

function QONGet(var queue: QueueOfNumbers) : boolean;
var
   tmp: NumberPtr;
begin
    if queue.first = nil then
    begin 
	QONGet := false;
	exit
    end;
    n := queue.first^.data;
    tmp := queue.first;
    queue^.first := queue.first^.next;
    if queue^.first = nil then
 	queue^.last := nil;
    dispose(tmp);
    QONGet := true
end;

function QONIsEmpty(var queue: QueueOfNumbers) : boolean;
begin 
    QONIsEmpty := queue^.first = nil;
end;


