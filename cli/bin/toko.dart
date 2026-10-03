import 'oop_01.dart';

void main() {
  var daftarBuku = [
    Buku('panduan python beginner', 50000)
  ];
  for (var buku in daftarBuku) {
    print(buku.harga);
  }
}
