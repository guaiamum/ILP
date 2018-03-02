program notasarq;
var 
	n,nota,i,j: integer;
	f: array[0..100] of integer;
begin
	read(n); //le numero de notas				
	
	for i:= 0 to 100 do //zera vetor 'f'				
	begin
		f[i]:=0;
	end;
	
	for i:= 1 to n do //acrescenta numero de repeticoes na posicao 'nota'				
	begin
		read(nota); 
		f[nota]:= f[nota] + 1;
	end;
	
	j:=0;
	for i:= 1 to 100 do //compara o maior
	begin
		if f[i]>=f[j] then
		begin
			j:=i;
		end;
	end;

	writeln(j);

end.