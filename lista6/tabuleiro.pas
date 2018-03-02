program tabuleiroo;
var
	n, nmov, col, lin, i: longint;
	cara: char;
	movim: ansistring;
begin
	readln(n);
	
	setlength(movim, n);						
	
	i:=1;
	while i<=n do
	begin
		read(cara);
		if ord(cara)<>32 then //diferente de espaco
		begin
			movim[i]:=cara;
			i:=i + 1;
		end;
	end;
	
	lin:=4;
	col:=3;
	i:=1;
	nmov:=0;
	while (lin<=7) and (lin>=0) and (col<=7) and (col>=0) and (i<=n) do
	begin
		
		if movim[i]='1'then
		begin
			lin:=lin + 1;
			col:=col + 2;
		end;
		if movim[i]='2' then 
		begin
			lin:= lin + 2;
			col:= col + 1;
		end;

		if movim[i]='3'then 
		begin
			lin:=lin + 2;
			col:=col - 1;
		end;

		if movim[i]='4'then 
		begin
			lin:= lin + 1;
			col:= col - 2;
		end;

		if movim[i]='5'then
		begin
			lin:= lin - 1;
			col:=col - 2;
		end;

		if movim[i]='6'then 
		begin
			lin:=lin - 2;
			col:=col - 1;
		end;

		if movim[i]='7'then 
		begin
			lin:=lin - 2;
			col:=col + 1;
		end;

		if movim[i]='8'then 
		begin
			lin:=lin - 1;
			col:=col + 2;
		end;
		
		if ((lin=1) or (lin=2)) and (col=3) then
		begin
			nmov:=nmov + 1;
			break;
		end;
			
		if (lin=2) and (col=5) then
		begin
			nmov:=nmov + 1;
			break;
		end;
			
		if (lin=5) and (col=4) then
		begin
			nmov:=nmov + 1;
			break;
		end;
			
		i:=i + 1;
		nmov:=nmov + 1;
	end;

	writeln(nmov);
end.