program fliper;
var p, r: longint;
begin
	read(p, r);
	if p=0 then
	begin
		writeln('C');
	end
	else
		if p=1 then
		begin
			if r=0 then
			begin
				writeln('B');
			end
			else
			if r=1 then
			begin
			writeln('A');
			end	
		end;
end.