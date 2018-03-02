program mappa;
var
	i, j, n, m, costa: longint;
	cara: char;
	mapa: array [1..1000,1..1000] of char;
begin
	
	readln(n, m); //le n e m							
	
	for i:= 1 to n do //leitura	mapa						
	begin
		j:=1;
		while (j <= m) do
		begin
			read(cara);
			if ord(cara) <> 10 then //se for diferente de 'quebra de linha' grava-se
			begin
				mapa[i,j]:=cara;
				j:=j + 1;
			end;
		end;		
	end;
	
	costa:= 0;
	for i:= 1 to n do //costa?							
	begin
		for j:= 1 to m do
		begin
			if mapa[i,j]='#' then
			begin
				if (mapa[i,j+1]<>'#') or (mapa[i,j-1]<>'#') or (mapa[i+1,j]<>'#') or (mapa[i-1,j]<>'#') then
					costa:= costa + 1;
			end;
		end;
	end;
	
	writeln(costa);
end.