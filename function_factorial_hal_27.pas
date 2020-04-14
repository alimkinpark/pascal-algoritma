Program factorial;

Uses crt;

function factorial ( n : byte ): longint;
	Begin
		if n <= 1 then factorial := 1
		else
			factorial := n * factorial (n - 1);
	
	End;

var n : byte;

{
	Nama	: Mohamad nuralim;
	Kelas	: X2G
	NPM		: 201943501627
}

Begin
	write('Berapa faktorial ? '); readln(n);
	writeLn('Faktorial = ', factorial(n));
	readln();
End.