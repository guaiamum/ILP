program timm;
var
	part,rod,n,ord,a: integer;
	i,j,z,t: integer;
	id: array [1..100] of integer;
begin
	readln(part,rod); t:=0;
	while (part<>0) do
	begin
		t:=t+1;
		//le identificadores
		for i:=1 to part do
			read(id[i]);
		readln;
		//rodada "rod"
		for i:=1 to rod do
		begin
			read(n,ord);
			z:= 1;
			for j:=1 to n do
			begin
				read(a);
				while id[z]=0 do
					z:=z+1;
				if a<>ord then //se errar, se ferra
					id[z]:=0;
				z:=z+1;
			end;			
		end;
		//impressao
		writeln('Teste ',t);
		for i:=1 to part do
			if id[i]<>0 then
				writeln(id[i]);
		writeln;
		//nova entrada
		readln(part,rod);
	end;
end.