program mappa;
var
	i, j, n, m: longint;
	costa, interior: longint;
	cara: char;
	mapa: array [1..1000,1..1000] of char;
begin
	
	readln(n, m); //le n e m						
	
	//writeln('>linhas e colunas:'); //debug
	//writeln(n,' ',m); //debug
	
	for i:= 1 to n do //leitura						
	begin
		j:=1;
		while (j <= m) do
		begin
			read(cara);
			if ord(cara) <> 10 then
			begin
				mapa[i,j]:=cara;
				j:=j + 1;
			end;
		end;		
	end;
	
	{writeln('>mapa lido:');//debug
	for i:= 1 to n do //impressao				
	begin
		for j:= 1 to m do
			write(mapa[i,j]);
		writeln;
	end;}
	
	
	//writeln('>categorizacao mapa:');//debug
	costa:= 0;
	interior:= 0;
	for i:= 1 to n do //costa?						
	begin
		for j:= 1 to m do
		begin
			if mapa[i,j]='#' then
			begin
				if (mapa[i,j+1]='#') and (mapa[i,j-1]='#') and (mapa[i+1,j]='#') and (mapa[i-1,j]='#') and (j+1<=m) and (j-1>=1) and (i-1>=1) and (i+1<=n) then
				begin
					interior:= interior + 1;
					{writeln('mapa[',i,',',j,']','e interior');//debug
					writeln//debug}
				end
				else
				begin
					costa:= costa + 1;
					{writeln('mapa[',i,',',j,']','e costa');//debug
					writeln//debug}
				end;
			end;
		end;
	end;
	
	//writeln('>valor costa:'); //debug
	writeln(costa);
end.
