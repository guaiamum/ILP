program teste;
var
	a: integer;
	clit: array [1..2] of string [4];
begin
	readln(clit[1,3]);
	
	for a:=1 to 4 do
		writeln(clit[1,a]);
end.	