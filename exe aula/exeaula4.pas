program testeloop;
var n,i,j: longint;
begin
	read(n);
	for i:= 1 to n do
	begin
		if (i mod 2)=1 then
		begin
			for j:=1 to ((n-i)div 2) do
			begin
				write(' ')
			end;
			for j:=1 to i do
			begin
				write('*')
			end;
		writeln;
		end;
	end;
end.
		