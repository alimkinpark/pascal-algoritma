Program sorting_swap_insertion;

Uses crt;

type larik = array [1..10] of byte;
	objek = object
		bykdata : byte;
		dataawal : larik;
		procedure input;
		procedure tukar ( var a, b : byte);
		procedure swap_insertion ( data : larik );
		procedure cetak ( data : larik );
	End;

procedure objek.input;
	var i : byte;

	Begin
		repeat
		write('Banyak data [max 10] ? ');
		readln(bykdata);

		if (bykdata > 10) then
			Begin
				writeLn('Data yang dimasukan kebanyakan ');
				readkey;
				writeLn();
			End;

		until (bykdata <= 10);
		for i := 1 to bykdata do
			Begin
				write('data Ke-', i, ' = ');
				readln(dataawal[i]);
			End;
	End;

procedure objek.tukar (var a, b : byte);
	var temp : byte;

	Begin
		temp := a;
		a := b;
		b := temp;
	End;

procedure objek.swap_insertion (data : larik);
	var i, j, lok : byte;

	Begin
		clrscr;
		writeLn('Swap insertion sort');
		write('Awal = ');
		cetak(data);

		for i := 1 to bykdata - 1 do
			Begin
				write('i=', i, ' ');
				
				j := i + 1;
					Begin
						while ( data[j] < data[j-1]) and (j > 1) do
							Begin
								tukar (data[j], data[j-1]);
								j := j - 1;
								{gotoxy(6, wherey);}
								{write('J = ', j);}
								cetak(data);
							End;
					
					End;
			End;
		write('Akhir = ');
		cetak(data);
		readkey;
	End;

procedure objek.cetak (data : larik);
	var i : byte;

	Begin
		for i := 1 to bykdata do
			Begin
				gotoxy(i * 10, wherey);
				write(data[i] : 5);
			End;
			writeLn();
	End;

var sort : objek;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}

Begin
	clrscr;
	sort.input;
	sort.swap_insertion(sort.dataawal);
End.