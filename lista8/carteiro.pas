program cartt;
var
	n, m, i, j, pos, tempo: longint;
	casas, encom: array [1..45000] of longint;
	
begin
	//le quantidade de casas e encom E zera tempo e posicao
	readln(n,m);
	tempo:=0; pos:=1;
	
	//le numero das casas
	for i:=1 to n do
	begin
		read(casas[i]);
	end;
	
	//le numero das encom
	for i:=1 to m do
	begin
		read(encom[i]);
	end;
	
	//determina o tempo
	for i:= 1 to m do
	begin
		//acha casa da encomenda
		for j:=1 to n do
			if encom[i]=casas[j] then
				break;
		
		//calcula tempo
		if encom[i]<casas[pos] then
		begin
			tempo:= tempo + (pos - j);
		end;
		
		if encom[i]>casas[pos] then
		begin
			tempo:= tempo + (j - pos);
		end;
		
		pos:=j;//nova posicao		
	end;
	
	writeln(tempo);
	
end.
		
		
