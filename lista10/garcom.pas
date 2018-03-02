program garccom;
var
	n,l,c,i,q: longint;
begin
	readln(n);
	q:=0;
	for i:=1 to n do
	begin
		readln(l,c);
		if l>c then
			q:=q+c;
	end;
	writeln(q);
end.