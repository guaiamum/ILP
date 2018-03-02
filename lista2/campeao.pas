program campeao;
var c1, c2, c3, x: integer;
var f1, f2, f3, y: integer;
begin
	read(c1, c2, c3, f1, f2, f3);
	x:= c1*3+c2;
	y:=f1*3+f2;
	if x>y then
	begin
		writeln('C');
	end
	else
	if x<y then
	begin
		writeln('F');
	end
	else
	if x=y then
	begin
		if c3=f3 then
		begin
			writeln('=');
		end
		else
		if c3>f3 then
		begin
			writeln('C');
		end
		else
		if c3<f3 then
		begin
			writeln('F');
		end
	end
end.