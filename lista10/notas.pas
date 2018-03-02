program abestalhada;
var
	n: integer;
begin
	readln(n);
	case n of
		0: writeln('E');
		1..35: writeln('D');
		36..60: writeln('C');
		61..85: writeln('B');
		86..100: writeln('A');
	end;
end.