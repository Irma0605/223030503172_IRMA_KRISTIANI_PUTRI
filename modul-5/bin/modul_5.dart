void main() {
  // Membuat Map yang berisi List
  Map<String, List> mapDenganList = {
    'angka': [10, 20, 30, 40, 50],
    'pesan': ['MODUL 5']
  };

  // Menampilkan Map yang memiliki List sebagai nilai
  print("Map dengan List: $mapDenganList");

  // Membuat List yang berisi Map
  List<Map<String, dynamic>> listBerisiMap = [
    {'nama': 'Anis', 'umur': 30},
    {'nama': 'Bob', 'umur': 20}
  ];

  // Menampilkan List yang berisi Map
  print("List berisi Map dengan detail: $listBerisiMap");

  // Membuat List angka dan mengoperasikannya
  List<int> angka = [10, 20, 30, 40, 50];

  // Menambahkan angka ke list
  angka.add(60);
  print("List setelah ditambah: $angka");

  // Mengedit elemen di list (mengubah elemen kedua menjadi 50)
  angka[1] = 50;
  print("List setelah diubah: $angka");

  // Menghapus elemen dari list (menghapus elemen ketiga/nilai pada index ke-2)
  angka.removeAt(2);
  print("List setelah dihapus: $angka");
}
