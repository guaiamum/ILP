program chuvass;
var
	i, j, n: byte;
	leitura, chuvas: array [1..100,1..100] of byte;
begin
	
	read(n); //le n
	
	for i:= 1 to n do //primeira leitura
	begin
		for j:= 1 to n do
			read(leitura[i,j]);
	end;
	
	for i:= 1 to n do //segunda leitura
	begin
		for j:= 1 to n do
		begin
			read(chuvas[i,j]);
			chuvas[i,j]:= chuvas[i,j] + leitura[i,j];
		end;
	end;
	
	for i:= 1 to n do //impressao
	begin
		for j:= 1 to n do
			write(chuvas[i,j],' ');
		writeln;
	end;
end.