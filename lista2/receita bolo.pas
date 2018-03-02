program receita;
var x,y,z,a,b,c: integer;
begin
	read(x,y,z);
	a := x div 2;
	b := y div 3;
	c := z div 5;
	if (a<=b) and (a<=c) then
	begin
		writeln(a)
	end
	else
	if (b<=c) and (b<=a) then
	begin
		writeln(b)
	end
	else
	if (c<=a) and (c<=b) then
	begin
		writeln(c)
	end;
end.