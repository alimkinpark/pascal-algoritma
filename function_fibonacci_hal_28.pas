Program fibonacci;

Uses crt;

function fibonacci ( n : word ) : word;
	var
		i, fiboAtas, fiboBawah, x : integer;

	Begin
		if n < 2 then fibonacci := n
		else
			Begin						
				fiboBawah := 0;
				fiboAtas := 1;

				// fibonacci := fibonacci(n-2) + fibonacci(n-1);

				for i := 2 to n do
					Begin
						x := fiboBawah;
						fiboAtas := fiboAtas;
					End;

				fibonacci := fiboAtas;
			End;
	End;

var
	n : word;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	write('Suku ke berapa? '); readln(n);
	writeLn('Nilai suku ke ', n, ' adalah = ', fibonacci(n));
	readln();
End.