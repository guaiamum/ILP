program cofrinho;var 	n,i,j,z,t,dif: longint;begin	t:=1;	read(n);	while n<>0 do	begin			writeln('Teste ',t); 		t:=t+1;		dif:=0;		for i:= 1 to n do		begin			readln(j ,z);			dif:=(j-z) + dif;			writeln(dif);		end;		writeln( );		read(n);	end;end.