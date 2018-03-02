program nueves;
var
	a,i,mult: longint;
	num: ansistring;
procedure leitura;
begin
	mult:=0;
	readln(num);
	a:=length(num);
		for i:=1 to a do
			mult:=mult + (ord(num[i])-48);
end;
begin
	leitura;
	while mult<>0 do
	begin
		if (mult mod 9)=0 then
			writeln(num,' is a multiple of 9 and has 9-degree ','grau','.')
		else
			writeln(num,' is not a multiple of 9.');
		leitura;
	end;
end.