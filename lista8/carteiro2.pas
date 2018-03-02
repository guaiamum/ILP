program cartt;
var
	n, m, i, j, pos, tempo, b, inicio, fim, meio: longint;
	casas, encom: array [1..45000] of longint;
//funcao posicao
function posicao(a: longint) : longint;
begin
	//acha casa da encomenda
		inicio:=1; fim:=n;
		while inicio <= fim do
		begin
			meio:= (inicio+fim) div 2;
				if a=casas[meio] then
				begin
					posicao:=meio;
					break;
				end;
				if a>casas[meio] then
					inicio:=meio + 1;
				if a<casas[meio] then
					fim:=meio - 1;
		end;
end;

//program
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
		b:=posicao(encom[i]);
		//calcula tempo
		if encom[i]<casas[pos] then
		begin
			tempo:= tempo + (pos - b);
		end;
		
		if encom[i]>casas[pos] then
		begin
			tempo:= tempo + (b - pos);
		end;
		
		pos:=b;//nova posicao		
	end;
	
	writeln(tempo);
	
end.
		
		
