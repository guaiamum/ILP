program cometa;
var a, x, y: longint;
begin
	read(a);
	x := ((a-1986)div 76) + 1;
	y := x * 76 + 1986;
	writeln(y);
	end.