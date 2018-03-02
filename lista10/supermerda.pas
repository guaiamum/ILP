program suprimicadius;
var
	s,i,j,aux,t: integer;
	x,y: array [1..1000] of integer;
begin
	//le dados
	readln(s); t:=1;
	while s<>0 do
	begin
		for i:=1 to s do
			readln(x[i],y[i]);
		//ordena
		for i:=1 to s do
			for j:=(i+1) to s do
			begin
			if x[i]>x[j] then
				begin
					aux:=x[i]; x[i]:=x[j]; x[j]:=aux;
				end;
				if y[i]>y[j] then
				begin
					aux:=y[i]; y[i]:=y[j]; y[j]:=aux;
				end;
			end;
		//tira mediana
		writeln('Teste ',t);
		t:=t+1;
		if (s mod 2)=0 then
		begin
			writeln((x[s div 2]+x[(s div 2)+1]) div 2,' ', (y[s div 2]+y[(s div 2)+1]) div 2)
		end;
		if (s mod 2)<>0 then
			writeln(x[(s div 2)+1],' ', y[(s div 2)+1]);
		writeln;
		readln(s);
	end;
end.