program golvetor;
var
	n,i,j,t,x,y,a,saldomaior: integer;
	gols: array [1..10000] of integer;
//calcula o periodo
Procedure calcperiodo;
var saldoatual, ini, jogo: Integer;
begin
   saldomaior:=0;
   saldoatual:=0;
   ini:=1;
   for jogo:=1 to n do 
   begin
		if saldoatual+gols[jogo] >= 0 then
			saldoatual:=saldoatual+gols[jogo]
		else 
		begin
			saldoatual:=0;
			ini:=jogo+1;
		end;
		if (saldoatual>saldomaior) or ((saldoatual=saldomaior) and (jogo-ini > j-i)) then 
		begin
			saldomaior:=saldoatual;
			i:=ini; j:=jogo;
		end;      
	end;
end;

begin
	readln(n); t:=0;
	while n<>0 do
	begin
		t:=t+1;
		//grava saldo
		for a:=1 to n do
		begin
			readln(x,y);
			gols[a]:=x-y;
		end;
		//best
		calcperiodo;
		//impressao
		writeln('Teste ',t);
		if saldomaior>0 then
			writeln(i, ' ', j)
		else
			writeln('nenhum');
		writeln;
		readln(n);
	end;	
end.