program minhocass;
var
	i, j, n, m: longint;
	prod, maiorprod: longint;
	minhocas: array [1..100,1..100] of longint;
begin
	
	readln(n, m); //le n e m		
	
	for i:= 1 to n do //leitura		
	begin
		for j:= 1 to m do
		begin
			read(minhocas[i,j]);
		end;
	end;
	
	maiorprod:=0;
	for i:= 1 to n do //maior linha		
	begin
		prod:=0;
		for j:= 1 to m do
		begin
			prod:= prod + minhocas[i,j];
		end;
		//writeln(prod);
		if prod > maiorprod then
			maiorprod:=prod;	
	end;		

	for i:= 1 to m do //maior coluna		
	begin
		prod:=0;
		for j:= 1 to n do
		begin
			prod:= prod + minhocas[j,i];
		end;
		//writeln(prod);
		if prod > maiorprod then
			maiorprod:=prod;	
	end;

	write(maiorprod);
end.