// String sayHello(String potato) {
//   return "Hello $potato nice to meet you!";
// }
// fat arrow syntax
String sayHello1(String potato) => "Hello $potato nice to meet you!";

num plus(num a, num b) => a + b;

// named argument - default value, required modifier
String sayHello2({
  String name = 'anon',
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age and you come from $country";
}

// optional positional parameter
String sayHello(String name, int age, [String? country = 'Korea']) =>
    "Hello $name, you are $age and you come from $country";

// QQ Operator
// String capitalizeName(String? name) =>
//     name != null ? name.toUpperCase() : 'anon';
String capitalizeName(String? name) => name?.toUpperCase() ?? 'anon';

// typedef
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(sayHello1('hyowon'));
  print(plus(2, 3));

  // print(sayHello('hyowon', 25, 'Korea'));
  print(sayHello2(
    age: 25,
    country: 'Korea',
  ));

  print(sayHello('hyowon', 25));

  capitalizeName('hyowon');
  capitalizeName(null);

// QQ equals
  String? name;
  name ??= 'hyowon';

  print(reverseListOfNumbers([1, 2, 3]));
}
