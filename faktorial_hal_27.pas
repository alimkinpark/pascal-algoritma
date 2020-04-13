Program faktorial;

Uses crt;

procedure faktorial( n : byte; var hasil : longint );
	Begin
		if n <= 1 then hasil := 1
		else
			Begin
				faktorial(n - 1, hasil);
				hasil := n * hasil;
			End;	
	End;

var 
	n : byte;
	f : longint;

Begin
	write('Berapa faktorial ');
	readln(n);
	faktorial(n, f);
	writeLn('Faktorial = ', f);
	readln();
End.