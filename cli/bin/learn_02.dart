// BAB 2 — NULL SAFETY
// Jalanin:  dart run bin/learn_02.dart

import 'dart:io';

void main() {
  // ================================================================
  // MASALAHNYA APA DULU
  // ================================================================
  // Di Python:
  //   nama = None
  //   print(nama.upper())   → CRASH pas dijalanin
  //                           AttributeError: 'NoneType' has no attribute 'upper'
  //
  // Masalahnya: baru ketauan pas program UDAH JALAN. Bisa jadi pas udah
  // dipakai user. Ini penyebab crash nomor 1 di software, sampai penemunya
  // nyebut ini "kesalahan semiliar dolar".
  //
  // Dart mindahin pengecekan ini ke SEBELUM program jalan.

  // ================================================================
  // ATURAN #1 — tipe biasa GAK BOLEH null
  // ================================================================
  String nama = 'Fitri';
  // String nama2 = null;   // ❌ ERROR. Gak bisa. Titik.
  print('1. $nama');

  // Artinya: kalau variabelnya bertipe String, dia DIJAMIN ada isinya.
  // Kamu gak perlu ngecek. Aman.
  print('1. huruf besar: ${nama.toUpperCase()}');

  // ================================================================
  // ATURAN #2 — tambahin ? kalau emang boleh kosong
  // ================================================================
  String? kota;              // ? = "boleh null". Belum diisi = null
  print('2. kota = $kota');  // null

  kota = 'Bandung';
  print('2. kota = $kota');

  // ================================================================
  // ATURAN #3 — yang nullable GAK BOLEH langsung dipakai
  // ================================================================
  String? hobi;
  // print(hobi.toUpperCase());  // ❌ ERROR sebelum jalan:
  //                             // "The property 'toUpperCase' can't be
  //                             //  unconditionally accessed because the
  //                             //  receiver can be null"
  //
  // Dart maksa kamu MIKIR: "kalau ini null, mau ngapain?"
  // Ada 3 cara jawabnya ↓

  // ---------- CARA 1: ?? kasih nilai cadangan ----------
  String? warna;
  print('3a. ${warna ?? 'gak diisi'}');   // warna null → pakai cadangan

  warna = 'biru';
  print('3a. ${warna ?? 'gak diisi'}');   // warna ada → pakai warna

  // Python: warna if warna is not None else 'gak diisi'
  // Dart:   warna ?? 'gak diisi'

  // ---------- CARA 2: ?. akses dengan aman ----------
  String? kata;
  print('3b. ${kata?.toUpperCase()}');    // null (gak crash, cuma null)

  kata = 'halo';
  print('3b. ${kata?.toUpperCase()}');    // HALO

  // ?. artinya: "kalau null, ya udah jangan dilanjut, balikin null aja"
  // Bisa digabung sama ??:
  String? kosong;
  print('3b. ${kosong?.toUpperCase() ?? 'KOSONG'}');

  // ---------- CARA 3: cek pakai if ----------
  String? email;
  email = 'a@b.com';

  if (email != null) {
    // di dalam blok ini Dart TAU email pasti ada isinya.
    // jadi boleh langsung dipakai tanpa ?. — ini namanya "promosi tipe"
    print('3c. ${email.toUpperCase()}');
  } else {
    print('3c. email kosong');
  }

  // ================================================================
  // ??=  isi cuma kalau masih kosong
  // ================================================================
  String? panggilan;
  panggilan ??= 'bro';      // kosong → diisi 'bro'
  panggilan ??= 'sis';      // udah ada isi → GAK diganti
  print('4. $panggilan');   // bro

  // ================================================================
  // !  — "percaya gua, ini gak null"  ⚠️ BAHAYA
  // ================================================================
  String? pasti = 'ada isinya';
  print('5. ${pasti!.toUpperCase()}');   // aman, emang ada isinya

  // TAPI kalau kamu salah:
  //   String? bohong;
  //   print(bohong!.toUpperCase());   → CRASH pas jalan
  //
  // Tanda ! itu kamu MATIIN pengamannya Dart. Kamu balik ke level Python:
  // crash pas runtime. Pakai ! cuma kalau kamu 100% yakin — dan kalau
  // kamu 100% yakin, biasanya ada cara lain yang lebih aman.
  //
  // Aturan praktis: liat ! di kode kamu → curiga dulu.

  // ================================================================
  // INI YANG KEMARIN KAMU TULIS DI learn.dart
  // ================================================================
  // var nama = stdin.readLineSync() ?? 'random';
  //                                 ^^^^^^^^^^^
  // readLineSync() balikinnya String?  — bukan String.
  // Kenapa? Karena user bisa aja nutup input (Ctrl+Z / Ctrl+D)
  // dan gak ngetik apa-apa → null.
  //
  // Dart gak ngizinin kamu pura-pura itu gak mungkin kejadian.
  // Kamu WAJIB nanganin. Kemarin kamu nanganin pakai ?? 'random'.
  // Sekarang kamu tau kenapa itu perlu.

  stdout.write('6. Ketik nama (atau Enter aja): ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('6. gak diisi, pakai default: Anonim');
  } else {
    print('6. halo, $input');
  }
}
