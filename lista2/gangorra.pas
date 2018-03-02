program gangorra;
var p1,c1,p2,c2,x: real;
begin
	read(p1,c1,p2,c2);
	x:= p1 * c1 / (p2 * c2);
	if x=1 then
	begin
		writeln('0')
	end
	else
	if x<1 then
	begin
		writeln('1')
	end
	else
	if x>1 then
	begin
		writeln('-1')
	end
end.