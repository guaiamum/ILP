program querm;
var 
	n,i,t,m: longint;
begin
	read(n); 
	t:=0;
	while n<>0 do
	begin
		for i:= 1 to n do
		begin
			read(m);
			if m=i then
			begin
				t:=t+1;
				writeln('Teste ',t);
				writeln(m);
				writeln( );
			end; 
		end;
		read(n);
	end;
end.