program tacobell;
var
	n,t,v,i,km: longint;
begin
	readln(n);
	km:=0;t:=0;v:=0;
	for i:= 1 to n do
	begin
		readln(t,v);
		km:=km + (v * t)
	end;
	writeln(km);
end.