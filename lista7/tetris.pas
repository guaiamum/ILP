program tetriss;
var
	i, j, n, teste: longint;
	nomes: array [1..1000] of string [15];
	notas, menor, maior, aux, c: longint;
	enter: char;
	aux2: string [15];
	soma: array [1..1000,1..2] of longint;
begin
	
	readln(n);
	teste:=1;
	
	while n<>0 do
	begin
		//zera soma
		for i:=1 to 1000 do 
		begin
			soma[i,1]:=0; soma[i,2]:=0;
		end;
		
		//leitura	e soma	
		for i:=1 to n do 									
		begin
			read(nomes[i]);
			for j:=1 to 12 do
			begin
				read(notas); // le 12 notas
				//menor e maior
				if j=1 then //menor e maior sao primeira nota
				begin
					menor:=notas; maior:=notas;
				end
				else //atualiza menor e maior
				begin
					if notas> maior then
						maior:=notas;
					if notas< menor then
						menor:=notas;	
				end;
					soma[i,1]:=soma[i,1] + notas;
			end;
			soma[i,1]:=soma[i,1] - (maior + menor);
			read(enter);	//le enter no final da linha
		end;
		
		//ordenando somas
		for i:=1 to n do
		begin
			maior:=i;
			for j:=(i+1) to n do
			begin
				if soma[j,1]>soma[maior,1] then
					maior:=j;
			end;
			aux:=soma[i,1]; aux2:=nomes[i];
			soma[i,1]:=soma[maior,1]; nomes[i]:=nomes[maior];
			soma[maior,1]:=aux; nomes[maior]:=aux2;
		end;
		
		//colocacao e ordem alfab
		for i:=1 to n do
		begin
		soma[i,2]:=i;
		end;
		c:=0;		
		for i:=2 to n do
		begin
			if soma[i-1,1]=soma[i,1] then //pontuacoes iguais, posicoes iguais
			begin
				c:=c+1;
				soma[i,2]:= soma[i,2] - c;
				//ordem alfabetica
				for j:= 1 to 15 do
				begin
					if nomes[i-1,j]>nomes[i,j] then
					begin
						aux2:=nomes[i-1]; nomes[i-1]:=nomes[i]; nomes[i]:=aux2;
						break;
					end;
					if nomes[i-1,j]<nomes[i,j] then
						break;
				end		
			end
			else
				c:=0;
		
		end;
	
		//impressao		
		writeln('Teste ',teste);										
		for i:=1 to n do 
		begin						
					writeln(soma[i,2],' ',soma[i,1],' ',nomes[i]);	
		end;
		writeln;
		 
		//nova entrada
		teste:=teste + 1;
		readln(n);
	end;

end.