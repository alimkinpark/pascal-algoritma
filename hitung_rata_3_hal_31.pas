Program hitung_rata_3;

Uses crt;

{contoh penggunaan function dan array}
var k, n, maksimum, minimum : integer;
	jumlah : longint;
	rata : real;
	a : array[0..100] of integer;

procedure inputData;
	Begin
		while a[n] <> -9 do
			Begin
				n := n + 1;
				write('Masukkan bilangannya : ');readln(a[n]);
			
			End; {end of while}
		n := n - 1;
	End; {end of procedure}

procedure cetakArray;
	var i : integer;

	Begin
		for i := 1 to n do write(a[i], ', ');
	End;

function total ( b : array of integer; x : integer) : longint;
	var i : integer;
		temp : longint;

	Begin
		temp := 0;
		for i := 1 to x do temp := temp + b[i];
		total := temp;
	End; {end of function}

function min( b : array of integer; x : integer) : integer;
	var i : integer;
		temp : integer;

	Begin
		temp:= b[1];
		for i := 2 to x do if temp > b[i] then temp := b[i];
		min := temp;
	End; {end of function}

function max( d : array of integer; n : integer) : integer;
	var i : integer;
		temp : integer;

	Begin
		temp := d[1];
		for i := 2 to n do if temp <d[i] then temp := d[i];
		max := temp;
	End; {end of function}

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin { program utama }
	inputData;
	writeLn('Banyaknya bilangan : ', n);
	write('ELemen arraynya adalah : '); cetakArray; writeLn();
	jumlah := total( a, n); write('Jumlah akhir = ', jumlah);
	rata := jumlah / n; writeLn(' Dan rata-rata = ', rata:5:2);
	minimum := min( a, n); writeLn('Elemen terkecil = ', minimum);
	maksimum := max( a, n); writeLn('Elemen terbesar = ', maksimum);
	writeLn(' ==o SELESAI O== ');
	readln();
End.