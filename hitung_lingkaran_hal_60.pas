Program hitung_lingkaran;

Uses crt;

type
	hasil = record
		jariJari : real;
		keliling : real;
		luas : real;
	end;

var lingkaran : hasil;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

begin
	with lingkaran do
		Begin
			write('Jari - jari lingkaran ? '); readln(jariJari);
			keliling := 2 * PI * jariJari;
			luas := PI * sqr(jariJari);
			writeLn();
			writeLn('Keliling Lingkaran = ', keliling:7:2);
			writeLn('Luas Lingkaran = ', luas:7:2);
		end;

		readln();
End.