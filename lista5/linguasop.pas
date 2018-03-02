program linguadop;
var
	i,j,e: integer;
	msg, nmsg: array [1..1000] of char;
begin
	for i:= 1 to 1000 do
	begin
		msg[i]:='0';
	end;

	
	readln(msg); //le mensagem encriptada					
	j:=1; 
	e:=2; 
	i:= 2;
	
	while msg[i] <> '0' do
	begin
		if msg[i]=' ' then //pula uma casa quando encontra espaco
		begin
			nmsg[j]:=' ';
			j:=j+1; 
		end
		else
			if ((e mod 2) >0) then //nao grava p's
			begin 				
				e:=e+1;
			end
			else
				if (e mod 2) =0 then //grava letras restantes
				begin
					nmsg[j]:= msg[i];
					j:=j+1;  
					e:=e+1;
				end;
		i:= i + 1;
	end;
	
	for i:= 1 to (j-1) do
		write(nmsg[i]);
end.