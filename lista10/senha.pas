program hackkers;
var
	n,k,i,j: integer;
	letra: char;
	codigo: array [1..10,1..10] of integer;
	senha: array [1..10] of string [6];
	pass,pass1: array [1..6] of integer;
	
begin
	readln(n);
	while n<>0 do
	begin
		for i:=1 to n do
		begin
			//le codigo numerico
			for j:=1 to 10 do
				read(codigo[j,i]);
			//le senha alfab
			k:=1;
			while k<=6 do
			begin
				read(letra);
				if letra<>' ' then
				begin
					senha[i,k]:=letra;
					k:=k+1;
				end;	
			end;
			//possiveis senhas
			
		
		readln(n);
	end;
end.