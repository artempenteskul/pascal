program task2;

type
    itemptr = ^item;
    item = record
   	data: integer;
        next: itemptr;
    end;

var
    first, last: itemptr;
    n: integer;

begin
     first := nil;
     while not SeekEof do 
     begin 
	readln(n);
    	if first = nil then
  	begin
	    new(first);
	    last := first;
        end
        else
	begin
	    new(last^.next);
	    last := last^.next;
        end;
    	last^.data := n;
        last^.next := nil;
    end;
 	
    while first <> nil do
    begin
	writeln(first^.data);
	first := first^.next;
    end; 
   
    while first <> nil do
    begin
 	last := first^.next;
        dispose(first);
        first := last;
    end;
end.

	 
