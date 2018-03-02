program testeloop;
var n,i,j: longint;
begin
	read(n);
	for i:= n downto 1 do
	begin
		for j:=1 to i do
		begin
			write('*')
		end;
	writeln;
	end;
end.
		