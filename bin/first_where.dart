import 'package:bahas_dart/bahas_dart.dart' as bahas_dart;

void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final students = ['windy', 'azka', 'jihan', 'khusnul'];

  // Mengambil data pertama  yang sesuai dengan function test
  print(numbers.firstWhere((int number) => number % 3 == 0)); // 3
  // Jika  data tidak ditemukan, maka akan error. Kita perlu handle itu
  //print(numbers.firstWhere((int number) => number > 10)); // ERROR

  print(numbers.firstWhere(
    (int number) => number > 10,
    orElse: () => -1, // erElse ini function yang mengembalikan nilai E*
  ));
  print(students.firstWhere(
    (element) => element == 'windy',
    orElse: () => '', // erElse ini function yang mengembalikan nilai E*
  ));
  // * nilai E --> tergantung jenis List nya, Misal List<String>, maka E juga String
}
