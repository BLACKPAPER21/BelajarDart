// KUIS BAB 1 — JAWAB DULU DI CHAT, BARU JALANIN FILE INI
// Jalanin:  dart run bin/kuis_01.dart

void main() {
  // --- SOAL 1 ---
  var a = 5;
  var b = a;
  b = 10;
  print('S1: $a');

  // --- SOAL 2 ---
  var nama = 'Fitri';
  var umur = 21;
  print('S2: $nama umur $umur, 5 tahun lagi ${umur + 5}');

  // --- SOAL 3 ---
  var angka = [1, 2, 3];
  angka.add(4);
  print('S3: ${angka.length} dan ${angka[0]}');

  // --- SOAL 4 ---
  String? kota;
  print('S4: ${kota ?? 'gak diisi'}');

  // --- SOAL 5 ---
  print('S5: ${pangkat(3)}');

  // --- SOAL 6 ---
  var nilai = {'a': 1, 'b': 2};
  nilai['a'] = 99;
  print('S6: $nilai');
}

int pangkat(int n) => n * n;
