Program urut_gravitasi;

Uses crt;

var 
	i, j, k, temp, n : integer;
	a, b, c : array [1..100] of integer;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	clrscr; textColor(12);
	write('Banyaknya elemen array : '); readln(n);

	{ input data }
	for i := 1 to n do
		Begin
			write('Elemen ke-', i, ' : '); readln(a[i]);
		
		End;

	{cetak array sebelum pengurutan}
	writeLn(); textColor(15); write('Sebelum diurutkan : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); textColor(15);

	writeLn(); writeLn('Proses pengurutan gravitasi : ');
	for i := 1 to n-1 do
		Begin
			for j := 1 to n-1 do
				Begin
					if a[j] > a[j+1] then
						Begin
							temp := a[ j + 1];
							a[ j + 1 ] := a[ j ];
							a[ j ] := temp;
						End;
				End;

			writeLn(); textColor(i);

			{cetak array tiap langkah pengurutan :}
			write('Hasil akhir langkah ke-', i, ' : ');
			for k := 1 to n do write(a[k]);
		End;

	{cetak arrya setelah pengurutan}
	writeLn(); writeLn(); textColor(15);
	write('Hasil pengurutan gravitasi : ');
	for i := 1 to n do write(a[i], ' ');
	writeLn(); writeLn(); textColor(10);
	write('Sudah terurut dengan benar khan ..?');
	readln();
End.