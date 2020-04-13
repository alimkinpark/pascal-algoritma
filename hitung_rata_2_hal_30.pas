Program hitung_rata_2;

Uses crt;

{contoh penggunaan procedure dan array}
var k, n : integer;
	jumlah : longint;
	rata : real;
	a : array[0..100] of integer;

procedure inputData;
Begin
	while a[n] <> -9 do
		Begin
			n := n + 1;
			write('Masukkan bilangannya : '); readln(a[n]);
		
		End; {end of while}
		n := n - 1;
End;

procedure cetakArray;
var i : integer;
Begin
	for i := 1 to n do write(a[i], ', ');

End;

procedure hitungJumlah( var total: longint);
var i : integer;
Begin
	for i := 1 to n do
		total := total + a[i];
End; {end of procedure}

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin {program utama}
	inputData; {panggil prosedur inputData}
	writeLn('Banyaknya bilangan : ', n);
	write('Elemen array-nya adalah : ');
	cetakArray; {panggil procedur cetakArray}
	writeLn();
	hitungJumlah(jumlah); {panggil hitungJumlah}
	write('Jumlah akhir = ', jumlah);
	rata := jumlah/n;
	writeLn(' dan Rata-ratanya = ', rata:5:2);
	writeLn(' ==O SELESAI O==');
	readln;
End.