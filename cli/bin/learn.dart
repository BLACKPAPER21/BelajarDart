import 'dart:io';

String sapa(String nama) {
  return "halo $nama";
}

int luas(int panjang, int lebar) {
  return panjang * lebar;
}

void tampilkanList(List<String> data) {
  for (var i = 0; i < data.length; i++) {
    print('${i + 1}. ${data[i]}');
  }
}

void main() {
  var daftar = ['rajin', 'semangat', 'optimis'];
  stdout.write("Siapa nama kamu: ");
  var nama = stdin.readLineSync() ?? 'random';
  var umur = 12;

  if (umur >= 10) {
    print("sudah dewasa ya $nama semoga kamu selalu:");
  } else {
    print("kamu masih kecil $nama");
  }

  tampilkanList(daftar);

  print(sapa(nama));
  print(luas(12, 10));
}
