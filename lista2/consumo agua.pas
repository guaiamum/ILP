program consumoagua;
var i,n: longint;
begin
	read(n);
	i := 7;
	if (n<=10) then
	begin
	i := i+0
	end
	else
	if (n>=11) and (n<=30) then
	begin
		i:=i+(n-10);
	end
	else
	if (n>=31) and (n<=100) then
	begin
		i:=27+(n-30)*2;
	end
	else
	if n>=101 then
	begin
		i:=167+(n-100)*5;
	end;
	writeln(i);
end.