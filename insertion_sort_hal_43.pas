Program insertion_sort;

Uses crt;

var
	i, j, k, temp, n : integer;
	a, b, c : array[1..1000] of integer;

Begin
	clrscr; textColor(12);
	write('Banyaknya elemen array : '); readln(n);

	{input data}
	for i := 1 to n do
		Begin
			write('Elemen ke- ', i, ' : ');
			readln(a[i]);		
		End;

	{ cetak array sebelum pengurutan}
	writeLn(); textColor(15);
	write('Sebelum diurutkan : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); textColor(15); writeLn();

	writeLn('Proses pengurutan isertion : ');
	for i := 2 to n do
		Begin
			temp := a[i];
			j := i - 1;
			while ( temp < a[j] ) and ( j > 0 ) do j := j - 1;

			for k := i downto j + 1 do a[k] := a[ k - 1];
			a[j + 1] := temp;
			writeLn(); textColor(i);
			write('Hasil akhir langkah ke-', i-1, ' : '); 
			{cetak array tiap langkah pengurutan}

			for k := 1 to n do write(a[k], ' ');
		End;

	{cetak array setelah pengurutan}
	writeLn(); writeLn(); textColor(15);
	write('Hasil pengurutan insertion : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); writeLn(); textColor(10);
	write('Sudah terurut dengan benar khan ..? ');
	readln();
End.