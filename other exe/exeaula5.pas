program testeloop;
var n,i,j: longint;
begin
	read(n); j:=0;
	for i:= 1 to n do
	begin
		if (n mod i)=0 then
			j:=j+1;
	end;
	if j=2 then
		writeln('Primo');
end.
		