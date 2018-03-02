program colisoes;
var x,y,a,b,x1,y1,a1,b1: longint;
begin
	read(x,y,a,b);
	read(x1,y1,a1,b1);
	if (x>a1) or (y>b1) or (a<x1) or (b<y1) then
	begin
		writeln(0)
	end
	else
	writeln(1);
end.