program boliuche;
var
	n,a,l,p: longint;
begin
	readln(n);
	readln(a,l,p);
	if (n<=a) and (n<=l) and (n<=p) then
		writeln('S')
	else
		writeln('N');
end.