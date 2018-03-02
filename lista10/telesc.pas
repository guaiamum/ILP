program telescc;
var
	teles,n,i,est,qnt: longint;
begin
	readln(teles);
	readln(n);
	qnt:=0;
	for i:=1 to n do
	begin
		readln(est);
		if est*teles>=40000000 then
			qnt:=qnt+1;
	end;
	writeln(qnt);
end.