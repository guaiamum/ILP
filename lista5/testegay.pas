program gay;
var
	i, n, b: longint;
	num: array [1..2] of char;
begin
	
	{for i:= 1 to 1000 do
		num[i]:='a';
	}
	readln(num);
	writeln(ord(num)*2);
	
	{ n:= 0;
	for i:= 1 to 1000 do
	begin
		if ord(num[i])= 0 then
			break
		else
		begin
			b:= (ord(num[i])-48);
			n := (n + b)*10;
			writeln(ord(num[i])-48);			
		end;
	end;
	writeln(n div 10)}
	end.