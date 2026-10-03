import 'dart:io';

String tampilkanNama(String? nama ) {
  String hasil = nama == null || nama.trim().isEmpty ? 'tamu' : nama ;
  hasil = hasil[0].toUpperCase() + hasil.substring(1);
  return 'Halo, $hasil';

}

void main() {
  stdout.write("jadi siapa nama kamu: ");
  String? input = stdin.readLineSync();
  print(tampilkanNama(input));
  print(tampilkanNama(null));
  print(tampilkanNama('budi'));
}
