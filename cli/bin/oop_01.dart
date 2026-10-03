

class Buku {
  final String judul;
  final int _harga;

  Buku(this.judul, this._harga);
  bool get mahal => _harga > 80000;
  int get harga => _harga;
  Buku.gratis(this.judul) : _harga = 0;

  @override
  String toString() {
    return '$judul - Rp $_harga';
  }

  int diskon(double persen){
    double potongan = _harga * persen / 100;
    return (_harga - potongan).round();
  }
}



void main() {
  var daftarBuku = [
    Buku('Laskar Pelangi', 85000),
    Buku('Pulang', 90000),
    Buku('Bumi Manusia', 70000),
    Buku.gratis('belajar panduan dart')
  ];

  int total = 0 ;
  int hargaBuku = 0 ;
  for (var buku in daftarBuku) {
    print(buku);
    total = total + buku.harga;
    print('judul: ${buku.judul}, harga after diskon 20%: ${buku.diskon(20)}');

    if(buku.mahal){
      print('${buku.judul}: Mahal');
    } else {
      print('${buku.judul}: Murah');
    }


    if (buku.harga > hargaBuku) {
      hargaBuku = buku.harga ;
    }


  }




print('total : Rp $total');
print('ini adalah buku yang mahal $hargaBuku');

}
