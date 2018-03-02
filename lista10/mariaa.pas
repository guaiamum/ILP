program mariaaa;
var
	mx,my,rx,ry,a,b: longint;
begin
	readln(mx,my,rx,ry);
	a:=(rx-mx);
	b:=(ry-my);
	if a<0 then
		a:=a*(-1);
	if b<0 then
		b:=b*(-1);
	writeln(a+b);
end.