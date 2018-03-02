program porcentagemletras;
var
	i, numpal, c: integer;
	porc: real;
	letra: char;
	txt: array [1..1000] of char;
begin
	readln(letra);
	read(txt);
	
	c:=0; 
	numpal:=1;
	porc:=0;
	for i:= 1 to length(txt) do
	begin
		if txt[i]=' ' then
		begin
			c:=0;
			numpal:= numpal + 1;
		end
		else
			if (txt[i]=letra) and (c=0) then
			begin
				c:=1;
				porc:= porc + 1;
			end;
	end;
	
	porc:= (porc / numpal)*100;
	
	writeln(porc:0:1);
end.