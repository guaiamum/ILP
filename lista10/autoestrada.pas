program engineiros;
var
	c,b,i: longint;
	broco: char;
begin
	readln(c);
	b:=0;
	for i:=1 to c do
	begin
	read(broco);
		case broco of
			'P','C':	b:=b+2;
			'A': b:=b+1;
		end;
	end;
	writeln(b);
end.