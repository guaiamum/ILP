program telefonista;
var
	i: byte;
	disc: string [15];
begin
	readln(disc);

	for i:= 1 to 15 do
	begin	
		if (disc[i]>='A') and (disc[i]<='C') then
			disc[i]:= '2'
		else
		if (disc[i]>='D') and (disc[i]<='F') then
			disc[i]:= '3'
		else
		if (disc[i]>='G') and (disc[i]<='I') then
			disc[i]:= '4'
		else
		if (disc[i]>='J') and (disc[i]<='L') then
			disc[i]:= '5'
		else
		if (disc[i]>='M') and (disc[i]<='O') then
			disc[i]:= '6'
		else
		if (disc[i]>='P') and (disc[i]<='S') then
			disc[i]:= '7'
		else
		if (disc[i]>='T') and (disc[i]<='V') then
			disc[i]:= '8'
		else
		if (disc[i]>='W') and (disc[i]<='Y') then
			disc[i]:= '9';
	end;

	writeln(disc);

end.
