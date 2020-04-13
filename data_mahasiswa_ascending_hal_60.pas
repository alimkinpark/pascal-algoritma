Program data_mahasiswa_ascending;

Uses crt;

type
	dataMhs = record
		npm : integer;
		nama : string[20];
		ip : real;
	End;

var
	jumlahMhs, i, j : byte;
	mahasiswa : array[1..50] of dataMhs;
	temp : dataMhs;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	{Masukkan data mahasiswa}
	write('Jumlah mahasiswa ? '); readln(jumlahMhs);
	for i := 1 to jumlahMhs do
		Begin
			writeLn();
			with mahasiswa[i] do
			Begin
				writeLn();
				write('NPM ke ', 1:2, ' ? ');readln(npm);
				write('Nama Mahasiswa ke ', 1:2, ' ? ');readln(nama);
				write('IP mahasiswa ke ', 1:2, ' ? ');readln(ip);
			End;
		End;

	{mengurutkan data berdasarkan npm mahasiswa dengan bubble sort}
	for i := 1 to jumlahMhs - 1 do
		for j := 1 to jumlahMhs - 1 do
			if mahasiswa[j].npm > mahasiswa[j+1].npm then
				Begin
					temp := mahasiswa[j];
					mahasiswa[j] := mahasiswa[j + 1];
					mahasiswa[J + 1] := temp;
				
				End;

	{menampilkan hasil}
	writeLn();
	writeLn('-----------------------------------------------------------------------');
	writeLn(' NPM               Nama           ip     ');
	writeLn('-----------------------------------------------------------------------');

	for i := 1 to jumlahMhs do
		Begin
			with mahasiswa[i] do
				writeLn( NPM:5, nama:20, IP:11:2 );
		End;

	writeLn('-----------------------------------------------------------------------');
	readln();
End.