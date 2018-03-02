program balass;
var
	n,k,piroca,envelopes: longint;
	i: longint;
	tipos: array [1..1000] of longint;
begin
	readln(n,k);
	//zera tipos
	for i:= 1 to k do
		tipos[i]:=0;
	//le tipos de rotulo e quantifica quantos de cada um aldo tem
	for i:= 1 to n do
	begin
	read(piroca);
	tipos[piroca]:=tipos[piroca]+1;
	end;
	//analiza quantos envelopes ele pode mandar
	envelopes:=tipos[1];
	for i:= 2 to k do
		if tipos[i]<envelopes then
			envelopes:=tipos[i];
	//impreme thudo
	writeln(envelopes);
end.