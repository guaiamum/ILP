program corridaa;
var
	ncar, nvolt, i, j, men: longint;
	tab: array [1..100,1..100] of longint;
	tempo: array [1..100] of longint;
	menor: array [1..3] of byte;
begin

	readln(ncar, nvolt); //le numero de carros e voltas resp					
	
	for i:= 1 to ncar do // le tempos de cada volta para cada carro					
	begin
		for j:= 1 to nvolt do
		begin
			read(tab[i,j]);
		end;
	end;
	
	for i:= 1 to ncar do // zera vetor tempo					
	begin
		tempo[i]:=0;
	end;
	
	for i:= 1 to ncar do //tempo final de cada carro					
	begin
		for j:= 1 to nvolt do
		begin
			tempo[i]:= tempo[i] + tab[i,j];
		end;
	end;
	
	for i:= 1 to 3 do // zera vetor menor				
	begin
		menor[i]:=0;
	end;
	
	for j:= 1 to 3 do
	begin
		men:=2147483647;
		for i:=1 to ncar do //posicoes								
		begin
			if (tempo[i]<=men) and (i<>menor[1]) and (i<>menor[2]) then
			begin
				men:=tempo[i];
				menor[j]:=i;
			end;
		end;
	end;
	
	for i:=1 to 3 do
	writeln(menor[i]);
end.
	