Program data_record_mahasiswa;

Uses crt;

type
	tglLahir = record
		hari : 1..31;
		bulan : 1..12;
		tahun : word;
	End;

	almt = record
		jalan : string[35];
		kota : string[25];
	End;

	mhs = record
		nama : string[25];
		alamat : almt;
		tglLahir : tglLahir;
	End;

var
	dataMhs : mhs;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	{masukkan data mahasiswa}
	dataMhs.nama := 'Mohamad Nuralim';
	dataMhs.alamat.jalan := 'Kemanggisan ilir 3';
	dataMhs.alamat.kota := 'Jakarta';
	dataMhs.tglLahir.hari := 19;
	dataMhs.tglLahir.bulan := 3;
	dataMhs.tglLahir.tahun := 1997;

	{menampilkan hasil}
	with dataMhs do
		Begin
			writeLn('Nama mahasiswa = ', nama);
			
			with alamat do
				Begin
					writeLn('Alamat = ', jalan);
					writeLn('         ', kota);
				End;

			with tglLahir do
				Begin
					writeLn('Tanggal lahir = ', hari:2, ' -', bulan:2, ' - ', tahun:4);				
				End;
		End;

	readln();
End.