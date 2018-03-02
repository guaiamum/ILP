program carlinhos;
var
	n,t: integer;
	auc: string [20];
	i,j,aux: integer;
	prob: array [1..100] of integer;
	nomes: array [1..100] of string [21];
begin
	readln(n);t:=1;
	while n<>0 do
	begin
		//entrada
		for i:=1 to n do
		begin
			readln(nomes[i]);
			prob[i]:=
		end;
		//ordenacao
		for i:=1 to n do
			for j:=i+1 to n do
			begin
				if prob[i]<prob[j] then
				begin
					aux:=prob[i]; prob[i]:=prob[j]; prob[j]:=aux;
					auc:=nomes[i]; nomes[i]:=nomes[j]; nomes[j]:=auc;
				end;
				if prob[i]=prob[j] then
					if nomes[i]>nomes[j] then
					begin
						auc:=nomes[i]; nomes[i]:=nomes[j]; nomes[j]:=auc;
					end;
			end;
		//impressao
		writeln('Instancia ',t);
		t:=t+1;
		writeln(nomes[n]);
		writeln;
		readln(n);
	end;
end.