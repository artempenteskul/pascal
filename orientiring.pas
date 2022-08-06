program orientiring;

const
    maxCheckPoint = 57;

type
    checkPoint = record
        n: integer;
        latitude, longitude: real;
	hidden: boolean;
 	penalty: integer;
     end;

     checkPointArray = array [1..maxCheckPoint] of checkPoint;

var
    cp: checkPoint;
    track: checkPointArray;

begin
    cp.n := 70;
    cp.latitude := 47.312;
    cp.longitude := 28.11;
    cp.hidden := false;
    cp.penalty := 20;
end.


