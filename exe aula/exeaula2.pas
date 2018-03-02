program testeloop;
var n,i,nota,media,sum: longint;
begin
	read(n); sum:=0;
	for i:= 1 to n do
	begin
		read(nota);
		sum := sum+nota
	end;
		writeln(sum div n);
end.
		