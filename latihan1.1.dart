import 'dart:io';

class Konversi {
  int desimal = 0;

  void inputDesimal() {
    print('Masukkan nilai desimal: ');
    desimal = int.parse(stdin.readLineSync()!);
  }

  void tampilHasil() {
    print('Hasil nilai biner = ${desimal.toRadixString(2)}');
    print('Hasil nilai oktal = ${desimal.toRadixString(8)}');
    print('Hasil nilai heksadesimal = ${desimal.toRadixString(16).toUpperCase()}');
  }
}

class Kalimat {
  String teks = '';

  void inputKalimat() {
    print('Masukkan kalimat: ');
    teks = stdin.readLineSync()!;
  }

  void cekBalik() {
    String hasil = '';
    for (int i = teks.length - 1; i >= 0; i--) {
      hasil += teks[i];
    }
    print('Hasil = $hasil');

    String asli = teks.replaceAll(' ', '').toLowerCase();
    String balik = hasil.replaceAll(' ', '').toLowerCase();

    if (asli == balik) {
      print('Palindrom');
    } else {
      print('Bukan palindrom');
    }
  }
}

void main() {
  Konversi konversi = Konversi();
  konversi.inputDesimal();
  konversi.tampilHasil();

  print('\n-----------------------------\n');

  Kalimat kalimat = Kalimat();
  kalimat.inputKalimat();
  kalimat.cekBalik();
}
