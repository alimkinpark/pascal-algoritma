Program hitung_rata_1;

Uses crt;

var k, n, bil : integer;
	jumlah : integer;
	rata : real;
	a : array[0..100] of integer;

procedure inputData(
	var a : array of integer;
	var i : integer);

Begin
	while a[i] <> -9 do
		Begin
			i := i + 1;
			write('Masukkan bilangannya : '); readln(a[i]);
		End; {end of while}
		i:= i - 1;
End; {end of procedure}

procedure cetakArray(
	a : array of integer;
	n : integer);

var i : integer;

Begin
	for i:= 1 to n do write(a[i], ',');
End;

procedure hitungJumlah(
	a : array of integer;
	x : integer;
	var total : integer);

var i : integer;

Begin
	for i := 1 to x do total := total + a[i];

End; {end of procedure}

{program utama}
Begin
	inputData( a, n); {panggil prosedur input data}
	writeLn('Banyaknya bilangan : ', n);
	write('Elemen array-nya adalah : ');
	cetakArray( a, n); {panggil prosedur cetak array}
	writeLn();
	hitungJumlah( a, n, jumlah);
	write('Jumlah akhir = ', jumlah);
	rata := jumlah / n;
	writeLn(' dan rata - rata = ', rata:5:2);
	writeLn(' --o SELESAI o--');
	readln();
End.