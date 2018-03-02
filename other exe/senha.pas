program senha;
var p: integer;
begin
	writeln ('Digite a senha');	
	read (p);
	repeat 
	writeln('Senha incorreta. Digite novamente');
	until (p=12);
	writeln ('Senha correta');
	writeln ('Parabéns!');
end.
