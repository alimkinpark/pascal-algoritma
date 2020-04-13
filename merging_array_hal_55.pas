Program merging_array;

Uses crt;

var 
	i, j, k, m, n, y, temp : integer;
	a, b, c : array[1..100] of integer;


procedure cetakArray( a : array of integer; x : integer );
	var i : integer;

	Begin
		write('Hasilnya = ');
		for i := 0 to x - 1 do write(a[i], ' ');
	End;

procedure sisip( var a : array of integer; x : integer);
	var i, j, temp : integer;

	Begin
		for i := 1 to x - 1 do
			Begin
			 	temp := a[i];
			 	j := i;
			 	
			 	while (temp < a[j - 1]) and (j > 0) do
			 		j := j -1;

			 		for k := i downto j do
			 			a[k] := a[k-1];
			 			a[j] := temp;
			 End; 
	End;

procedure gabung(a, b : array of integer; m, n : integer; var c : array of integer; var x : integer);
	var i, j, k, y : integer;

	Begin
		i := 0;
		j := 0;
		k := 0;

		while (i <= m) and (j <= n) do
			Begin
				if a[i] < b[j] then
					Begin
						c[k] := a[i];
						i := i + 1;					
					End
				else
					Begin
						c[k] := b[j];
						j := j + 1;					
					End;

				k := k + 1;
				write('i = ', i, ', ','j = ', j, ', ', 'k = ', k, ' ');
				cetakArray(c, k - 1);
				writeLn();
			End;

		if i > m then
			Begin
				for y := k - 1 to m + n do
					Begin
						c[y] := b[j];
						j := j + 1;					
					End;			
			End
		else if j > n then
			Begin
				for y := k - 1 to m + n do
					Begin
						c[y] := a[i];
						i := i + 1;					
					End;			
			End;


		write('Setelah penggabungan : '); cetakArray(c, y);
		x := y;
	End;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	clrscr;
	randomize;
	writeLn(' M E R G I N G ');
	writeLn();
	write('Banyaknya elemen array pertama : ');
	readln(m);
	write('banyaknya elemen array kedua : ');
	readln(n);

	for i := 1 to m do a[i] := random(100);

	for	i := 2 to n do b[i] := random(100);

	writeLn('Sebelum penggabungan : ');
	sisip(a, m);
	write('Array Pertama : ');
	cetakArray(a, m); writeLn();
	sisip(b, n);
	write('Array Kedua : ');
	cetakArray(b, n); writeLn();

	writeLn();
	writeLn('Proses penggabungan : ');
	gabung(a, b, m, n, c, y);
	writeLn();

	writeLn();
	write('Setelah penggabungan : ');
	cetakArray(c, y);
	readln();

End.