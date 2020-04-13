Program binary_search;

Uses crt;

Type
	tipe_larik = word;
	larik = array [1..8] of Tipe_larik;

Procedure caribiner (x : larik; cari : tipe_larik; bawah, atas : word; Var urutKetemu : word);

var tengah : word;

Begin
	if bawah > atas then urutKetemu := 0
	else
		Begin
			tengah := (bawah + atas) div 2;
			if cari = x[tengah] then
				urutKetemu := tengah
			else
				if cari < x[tengah] then
					caribiner(x, cari, bawah, tengah - 1, urutKetemu)
				else
					caribiner(x, cari, tengah + 1, atas, urutKetemu);
		End;
End;

Type nama = string[20];

CONST
	NPM : larik = (1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241);
	NAMA_MHS : array [1..8] of nama = ('arief', 'ani', 'budi', 'citra', 'dewi', 'erni', 'fanny', 'ghana');

var
	cari : word;
	ketemu : word;
	lagi : char;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	lagi := 'Y';
	while upcase(lagi) = 'Y' do
	Begin
		clrscr;
		write('NPM mahasiswa yang dicari: '); readln(cari);
		writeLn();
		caribiner(NPM, cari, 1, 8, ketemu);
		if ketemu = 0 then
			writeln('NPM mahasiswa tidak ada')
		else
			Begin
					writeLn('NPM mahasiswa : ', NPM[ketemu]);
					writeLn('Nama mahasiswa : ', NAMA_MHS[ketemu]);
			End; writeLn('');
			write('cari yang lain lagi (Y/T) ? '); readln(lagi);
	End;
End.