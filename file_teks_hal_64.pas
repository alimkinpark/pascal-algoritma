Program file_teks;

Uses crt;

var
	berkasTeks : text; {variable file}
	kodeBrg : string[5];
	namaBrg : string[20];
	unitBrg : integer;
	hargaBrg : real;
	lagi : char;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	Assign (berkasTeks, 'Barang.txt'); {Hubungan dengan eksternal file}
	rewrite(berkasTeks); {buka file}

	lagi := 'Y';
	While upcase (lagi) = 'Y' do
		Begin
			clrscr;
			gotoxy(5, 6); write('Kode Barang            : ');
			gotoxy(5, 8); write('Nama Barang            : ');
			gotoxy(5, 10); write('Unit Barang            : ');
			gotoxy(5, 12); write('Harga Satuan Barang    : ');

			{masukkan data ke variable - variable}
			gotoxy(30, 6);readln(kodeBrg);
			gotoxy(30, 8);readln(namaBrg);
			gotoxy(30, 10);readln(unitBrg);
			gotoxy(30, 12);readln(hargaBrg);

			{rekam di file}
			writeLn(berkasTeks, kodeBrg:5, namaBrg:20, unitBrg, hargaBrg:10:2);
			gotoxy(5,15); write('Ada data lagi (Y/T) ? '); readln(lagi);
		End;
{tutup file}
close(berkasTeks);
End.