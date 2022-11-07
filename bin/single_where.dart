import 'package:bahas_dart/bahas_dart.dart' as bahas_dart;

void main() {
// method singlewhere -->
// Memastikan HANYA ADA SATU DATA yang sesuai dengan kondisi,
// jika data tidak ditemukan --> maka hasilnya data dari orElse
// jika ADA DATA LEBIH DARI SATU yang sesuai kondisi -->  akan ERROR

  List<int> names = [1, 2, 3, 4, 5];
  final student = ['windy', 'azka', 'jihan', 'khusnul', 'azka'];

  print(names.singleWhere((int element) => element == 2));
  print(student.singleWhere((String element) => element == 'windy'));

  // element == 6 tidak  ditemukan -> maka data hasil orElse yang muncul

  print(names.singleWhere((element) => element == 6, orElse: (() => -1)));

  // Di kode dibawah ini aka ERROR
  print(
      student.singleWhere((element) => element == 'azka', orElse: (() => '')));

  // NB : jadi  hati-hati saat menggunakan singelwhere pada list yang datanya banyak kembar
  // COCOK  dipakai denga Set -> karena Set pasti  tidak ada data yang kembar
}
