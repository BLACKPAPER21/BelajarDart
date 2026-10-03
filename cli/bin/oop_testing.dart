class Sekolah{
  final int _jumlahMurid;
  final String kelas;
  final String jurusan;

  Sekolah(this.kelas, this._jumlahMurid, this.jurusan);

  int get jumlahMurid {
    return _jumlahMurid ;
  }

  set ubahJumlahMurid(int nilai) {
    if (_jumlahMurid < 1) {
      print('tidak valid');
    }
  }

}

void main() {
  var bagianSekolah = [
    Sekolah('XI', 31, 'IPA'),
    Sekolah('X', 21, 'IPS'),
    Sekolah('XI', 30, 'Teknik Komputer dan Jaringan')
  ];

  for(var sekolah in bagianSekolah) {
    print(sekolah.jumlahMurid);
    sekolah.ubahJumlahMurid = 10;
  }
}
