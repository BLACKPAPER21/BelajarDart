class Hewan {
  String nama;
  Hewan(this.nama);
  void suara() => print('...');
}

class Kucing extends Hewan {
  Kucing(super.nama) ;
  @override
  void suara() => print('$nama: meong');
}

class Anjing extends Hewan {
  Anjing(super.nama);
  @override
  void suara() => print('$nama : guguguk');
  }


void main() {
  Kucing kucing = Kucing('asep');
  kucing.suara();
  Anjing anjing = Anjing('dika');
  anjing.suara();
}
