Program fibonacci;

Uses crt;

function fibonacci ( n : word ) : word;
	var
		i : integer;

	Begin
		if n < 2 then fibonacci := n
		else
			fibonacci := fibonacci(n-2) + fibonacci(n-1);	
	End;

var
	n : word;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	write('Suku ke berapa ? '); readln(n);
	writeLn('Nilai suku ke ', n, ' adalah = ', fibonacci(n));
	readln();
End.