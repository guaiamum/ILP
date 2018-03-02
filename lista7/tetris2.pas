program tetriss;
var
	i, j, n, teste: longint;
	nomes: array [1..1000] of string [15];
	notas, menor, maior, aux: longint;
	aux2: string [15];
	soma: array [0..1000,1..2] of longint;
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
		soma[0,1]:=-1;

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
			readln;	//le enter no final da linha
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
			soma[i,2]:=i;
	
		for i:=1 to n do
		begin
				for j:= (i+1) to n do
				begin
					if soma[i,1]=soma[j,1] then //pontuacoes iguais, posicoes iguais
					begin
						soma[j,2]:= soma[i,2];
						if nomes[i]>nomes[j] then
						begin
								aux2:=nomes[j]; nomes[j]:=nomes[i]; nomes[i]:=aux2;
						end;
					end;
				end		
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
