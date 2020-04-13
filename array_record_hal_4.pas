Program Array_Record;

Uses crt;
Type Mahasiswa = record
        Nama : string;
        Npm  : string;
        Nilai : integer;
End;

Var Mhs : array [1..10] of mahasiswa;
    Jum : byte;
    I,J : integer;

Procedure Input;
Begin
        Writeln('Data Mhs');
        write('Jumlah data : ');
        Readln(Jum);
        writeln;
                for I:= 1 to Jum do
                begin
                        writeln('Data ke- ', I);
                        write('Nama : '); readln(Mhs[i].Nama);
                        write('Npm : '); readln(Mhs[i].Npm);
                        write('Nilai : '); readln(Mhs[i].Nilai);
                        writeln;
                end;
end;

Procedure Judul;
Begin
        clrscr;
        gotoxy(20,1); writeln('Data Mahasiswa');
        Writeln('----------------------------------------------------');
        gotoxy(3,3); write('No');
        gotoxy(7,3); write('Nama');
        gotoxy(27, 3); write('Npm');
        gotoxy(45,3); writeln('Nilai');
        writeln('----------------------------------------------------');
end;

Procedure Tampil;
Begin
        for I:= 1 to Jum do
        begin
                gotoxy(3,4 + i); write(i);
                gotoxy(7,4 + i); write(mhs[i].Nama);
                gotoxy(27,4 + i); write(mhs[i].Npm);
                gotoxy(45,4 + i); writeln(mhs[i].Nilai);
        end;
        writeln('----------------------------------------------------');
End;

{
    Nama    : Mohamad Nuralim;
    Kelas   : X2G;
    NPM     : 201943501627;
}

{Program utama}
Begin
clrscr;
        Input;
        Judul;
        Tampil;
        Readln;
end.

















