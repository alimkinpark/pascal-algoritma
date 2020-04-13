Program sorting_bubble_selection;

Uses crt;

type
	larik = array [1..10] of byte;
	objek = object
		bykdata : byte;
		dataawal : larik;
		procedure input;
		procedure tukar( var a, b : byte);
		procedure bubble( data : larik );
		procedure selection( data : larik );
		procedure cetak( data : larik );
	end;

procedure objek.input;
	var i : byte;

	Begin
		repeat
		write('Banyak data [max 10] ? ');
		readln(bykdata);
		if ( bykdata > 10 ) then
			Begin
				writeLn('Data yang dimasukkan kebanyakan ');
				readkey; writeLn();
			End;

		until ( bykdata <= 10 );

		for i := 1 to bykdata do
			Begin
				write('Data ke-', i, ' = ');
				readln(dataawal[i]);
			End;
	End;

procedure objek.tukar ( var a, b : byte );
	var temp : byte;

	Begin
		temp := a;
		a := b;
		b := temp;
	End;

procedure objek.bubble ( data : larik );
	var i, j : byte;

	Begin
		clrscr;
		writeLn('Bubble sort');
		write('awal : ');
		cetak( data );
		for i := 1 to bykdata - 1 do
			Begin
				if ( data[j] > data[j + 1] ) then tukar(data[j], data[j + 1]);
				gotoxy( 1, wherey );			
			End; readkey;

		write('Akhir : ');
		cetak(data); readkey;
	end;

procedure objek.selection ( data : larik );
	var i, j, lok : byte;

	Begin
		clrscr;
		writeLn('selection sort'); write('awal ');
		cetak(data);
		for i:= 1 to bykdata do
			Begin
				lok := i;
				for j := i + 1 to bykdata do
					if ( data[lok] > data[j] ) then
						lok :=  j; tukar( data[i], data[lok]);
						write('I= ',i, ' lok= ', lok);
						cetak(data);
			End;
	End;

procedure objek.cetak ( data : larik );
	var i : byte;

	Begin
		for i := 1 to bykdata do
			Begin
				gotoxy( i * 10, wherey);
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
	sort.bubble(sort.dataawal);
	sort.selection(sort.dataawal);
	readln();
End.