program hanoui;
var
	n: longint;
	i, m, t: longint;
	
//funcao potencia	
function potencia(a: longint): longint;
begin
	potencia:=1;
	for i:=1 to a do
		potencia:= potencia*2;
end;

//programa
begin
	//leitura
	readln(n);
	
	t:=1;
	while n <> 0 do
	begin
		m:=potencia(n) - 1;
		
		//impressao
		writeln('Teste ',t);
		writeln(m);
		writeln;
		
		//novo teste
		t:=t+1;
		readln(n);
	end;
end.