program cartas;
var a,b,c,d,e: longint;
begin
	read(a,b,c,d,e);
	if (a<b) and (b<c) and (c<d) and (d<e) and (e>a) and (e>b) and (d>a) then
		writeln('C')
	else
	if (a>b) and (b>c) and (c>d) and (d>e) and (e<a) and (e<b) and (d<a) then
		writeln('D')
	else
		writeln('N')
end.