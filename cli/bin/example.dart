class BukuA {
  String judul;
  int harga;
  BukuA(this.judul, this.harga);
  String kasihTeks() { return 'Judul: $judul, Harga: $harga'; }   // balikin String ✅
}


class BukuB {
  String judul;
  int harga;
  BukuB(this.judul, this.harga);

  @override
  String toString()  { return 'Judul: $judul'; }   // balikin String ✅
}


void main() {
  var buku = BukuB('laskarPelangi', 50000);
  var buku2 = BukuA('laskarPelangi', 50000);

  print(buku);
  print(buku2.kasihTeks());


  Map<String,String> buah = {
    'anggur' : 'buah',
    'apel' : 'buah',
    'tomat' : 'buah'
  };

  print(buah['mangga'] ?? 'sayur');
}
