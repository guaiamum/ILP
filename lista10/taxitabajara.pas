program tabelAG;
var
	A, G, Ra, Rg: real;
begin
	readln(A, G, Ra, Rg);
	if (Ra/A)>(Rg/G) then
		writeln('A')
	else
		writeln('G');
end.