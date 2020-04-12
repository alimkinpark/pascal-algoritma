Program urut_seleksi;

Uses crt;

var
	i, j, k, temp, imaks, n : integer;
	a, b, c : array[1..1000] of integer;

Begin
	clrscr; textColor(10);
	write('Banyaknya Elemen array: '); readln(n);

	{input data}
	for i := 1 to n do
		Begin
			write('Elemen ke-', i, ': '); readln(a[i]);		
		End;

	{cetak array sebelum pengurutan}
	writeLn(); textColor(15); write('Sebelum diurutkan : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); write(); textColor(15);
	writeLn('Proses pengurutan seleksi : ');
	for i := 1 to n - 1 do
		Begin
			imaks :=  i;
			for j := i + 1 to n do if a[j] < a[imaks] then imaks := j;

			{ tukar a[j] dengan a[imaks] }
			temp := a[imaks];
			a[imaks] := a[i];
			a[i] := temp;
			writeLn(); textColor(i);

			{ cetak array tiap langkah pengurutan }
			write('Hasil akhir langkah ke-', i, ' : ');
			for k := 1 to n do write(a[k], ' ');
		End;

	{ cetak array setelah pengurutan }
	textColor(15); writeln();writeLn('========================================================');
	write('Hasil pengurutan seleksi : ');
	for i := 1 to n do write(a[i], ' ');
	readln();
End.