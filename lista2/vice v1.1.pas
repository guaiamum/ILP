program vice;
var a, b, c: integer;
begin
	read(a,b,c);
	if (a > b) and (b > c) and (a>c) then
	begin
		writeln(b)
	end
	else
	if (a > b) and (c > b) and (a>c) then
	begin
		writeln(c)
	end
	else
	if (b > c) and (c > a) and (b>a) then
	begin
		writeln(c)
	end
	else
	if (b > c) and (a > c) and (b>a) then
	begin
		writeln(a)
	end
	else
	if (c > b) and (b > a) and (c>a) then
	begin
		writeln(b)
	end
	else
	if (c > b) and (a > b) and (c>a) then
	begin
		writeln(a)
	end
end.