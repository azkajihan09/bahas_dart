import 'package:bahas_dart/bahas_dart.dart' as bahas_dart;

void main(List<String> arguments) {
  List<int> names = [1, 2, 3, 4, 5];
  final student = ['windy', 'azka', 'jihan', 'khusnul', 'azka'];
  print(names.singleWhere((int element) => element == 2));
  print(student.singleWhere((String element) => element == 'windy'));

  print(names.singleWhere((element) => element == 6, orElse: (() => -1)));
  print(student.singleWhere((element) => element == 'azka',
      orElse: (() => 'naura')));
}
