Program Urut_BUBBLE;

uses crt;

var
	i,j,k,temp,n : integer;
	A, B, C : array [1..100] of integer;

{
	Nama 	: Mohamad Nuralim;
	Kelas 	: X2G;
	NPM 	: 201943501627;
}


begin

	clrscr; textcolor(9);
	write('Banyaknya Elemen Array : ') ; readln(n);
	{Input Data}
	for i:= 1 to n do
		A[i]:= random(1000);

	{cetak array sebelum pengurutan}
	writeln; textcolor(5);
	write ('Sebelum diurutkan : ');
	for i := 1 to n do write(A[i],'  ');
	
	writeln;textcolor(10);
	writeln( 'Proses Pengurutan Bubble :');
	for i:= 1 to n-1 do begin
		for j := n downto i+1 do begin
			if A[j-1] > A[j] then begin
				temp := A[j-1];
				A[j-1] := A[j];
				A[j] :=temp;
			end;
		end;
	{Cetak Array tiap langkah pengurutan:}
	writeln; write('Hasil akhir langkah ke-',i,' : ');
	for k := 1 to n do write(A[k],'  ');
	end;

	{Cetak Array Setelah Pengurutan}
	writeln; writeln; textcolor(15) ; write('Hasil Pengurutan Bubble : ');
	for i := 1 to n do write(A[i],'  ');
	readln;
end.