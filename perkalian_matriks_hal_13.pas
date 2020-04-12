Program perkalian_matriks;

Uses crt;
Type
        Larik = array[1..25, 1..25] of real;

Var
        I,J,K : byte;
        M,N,L : byte;
        A,B,c : larik;

Begin

Clrscr;

Write('Baris matriks pertama                     ? '); Readln(M);
Write('Baris matriks pertama/baris matriks kedua ? '); Readln(N);
Write('Kolom matriks kedua                       ? '); Readln(L);
writeln;

{Masukkan data matriks pertama}
Writeln('Matriks yang pertama : ');

for I:= 1 to M do
begin
        for J:= 1 to N do
        Begin
                write('Nilai [', I, ',', J, '] : '); readln(A[I,J]);
        end;
        writeln;
end;

{Masukkan data matriks Kedua}
Writeln('Matriks yang kedua : ');

for I:= 1 to N do
begin
        for J:= 1 to L do
        Begin
                write('Nilai [', I, ',', J, '] : '); readln(B[I,J]);
        end;
        writeln;
end;

{Perkalian matriks}
For I:= 1 to M do
Begin
        for J:= 1 to N do
        Begin
                C[I,J] := 0 ;
                        for k := 1 to L do
                        C[i,J] := C[I,J] + A[I,K] * B[K,J];
        End;
End;

{Mencetak hasil Perkalian}
clrscr;
Writeln('Hasil dari perkalian matriks : ');
writeln;
For I:= 1 to M do
        Begin
                for J:= 1 to L do
                Write(C[I,J]:9:2);
                writeln;
        End;

readln;
End.















