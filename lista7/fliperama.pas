program bebe;
var
	n, m, i, j, aux: longint;
	partidas: array[1..10000] of longint;
begin
	readln(n,m);
	
	//leitura
	for i:=1 to n do
	begin
		readln(partidas[i]);
	end;
	
	//ordenação
	for i:=1 to m do
	begin
		for j:=(i+1) to n do
		begin
			if partidas[j]>partidas[i] then
			begin
				aux:=partidas[i]; partidas[i]:=partidas[j]; partidas[j]:=aux;
			end;
		end;
	end;
	
	//impressão
	for i:=1 to m do
	begin
		writeln(partidas[i]);;
	end;
end.