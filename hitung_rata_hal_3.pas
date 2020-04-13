program hitung_rata;

uses crt;

var i,k,n: integer;
jumlah: longint;
rata: real;
A: array[0..100] of integer;

{
        Nama    : Mohamad Nuralim;
        Kelas   : X2G;
        NPM     : 201943501627;
}

begin
clrscr;
//input data
while a[n] <> -9 do
        begin
                n:= n + 1;
                write('Masukkan bilangannya : ');readln(a[n]);
        end;

        writeln('==============================');
        n := n -1;
        writeln('Banyaknya bilangan : ', n);
        writeln;
        writeln('==============================');

        write('Elemen array-nya adalah : ');
                for i:= 1 to n do
                write(A[i],',');writeln;writeln;

        writeln('==============================');
                for i:=1 to n do
                jumlah:= jumlah + a[i];
                writeln('Jumlah akhir = ', jumlah);

                Rata:= jumlah/n;
                writeln('Dan rata-rata = ', rata:5:2);writeln;
                writeln('========== SELESAI ==========');
                readln;
end.
