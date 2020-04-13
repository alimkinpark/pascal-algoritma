Program insertion_swap_sort;

Uses crt;

var
	i, j, k, temp, n : integer;
	a, b, c : array[1..1000] of integer;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}


Begin
	clrscr; textColor(12);
	write('Banyaknya Elemen array : '); readln(n);
	{ input data }
	for i := 1 to n do
		Begin
			write('Elemen ke-', i, ' : ');
			readln(a[i]);
		End;

	{ Cetak array sebelum pengurutan }
	write(); textColor(15); write('Sebelum diurutkan : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); textColor(15); writeLn();
	writeLn('Proses pengurutan Swap_insertion: ');
	for i := 1 to n - 1 do
		Begin
			j := i + 1;
			while ( a[j] < a[j - 1] ) and ( j > 1 ) do
			Begin
				temp := a[j - 1];
				a[j - 1] := a[j];
				a[j] := temp;
				j := j - 1;
			End;
			writeLn(); textColor(i);
			write('Hasil akhir langkah ke-', i, ' : ');

			{cetak array tiap langkah pengurutan}
			for k := 1 to n do write(a[k], ' ');
		End;

	{cetak array setelah pengurutan}
	writeLn(); writeLn(); textColor(15);
	write('Hasil pengurutan insertion : ');
	for i := 1 to n do write(a[i], ' ');
	readln();
End.