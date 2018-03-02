program bolas;
var x,y: longint;
begin
	read(x,y);
	if (x>=0) and (x<=432) and (y>=0) and (y<=468) then
	begin
			writeln('dentro')
	end
	else
	writeln('fora');
end.