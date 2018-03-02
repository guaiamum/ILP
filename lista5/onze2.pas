program onze2;
var
	num: ansistring;
	i, sump, sumi: longint;
	b: byte;
begin
	
	setlength(num, 1000);
	
	readln(num); // le string num										

	sump:=0; 
	sumi:=0;
	
	while num<>'0' do //soma alternada						
	begin
		for i:= 1 to length(num) do
		begin
			b:=ord(num[i])-48;
			if (i mod 2)=0 then
				sump:= sump + b
			else
				sumi:= sumi + b;
		end;
		
		
		if ((sumi-sump)=0) or ((sumi-sump) mod 11=0) then
			writeln(num,' is a multiple of 11.')
		else
			writeln(num,' is not a multiple of 11.');
		
		readln(num);
		sump:=0; 
		sumi:=0;
	end;

end.
	