program testeloop;
var n,i,j: longint;
begin
	read(n); 
	j:=trunc(sqrt(n));
	while (i <= j) do
	begin
		if (n mod i)=0 then
			break;
	i:=i+2;
	end;
	if (i >= j) then
		begin
			writeln('Primo')
		end;
end.
		