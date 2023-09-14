// without null safety
bool isEmpty(String string) => string.length == 0;

void main() {
  print('hello wrold');

// Variables
  // var name = 'hyowon'; // compiler knows that it's type is string
  String name = '효원';
  name = 'hyowon'; // udpate variable data

  var name2; // type: dynamic
  name2 = 'hyowon';
  name2 = 12;
  name2 = true;

  dynamic newDym;
  if (newDym is String) {
    // newDym.  // string methods
  }
  if (newDym is int) {
    // newDym.  // int methods
  }

  // final variables : 변하지 않는 변수(상수)
  final name3 = 'hyowon';
  // final String name3 = 'hyowon';
  // name3 = 'hyowonson'; // cannot update final variable

  // late variables : allow to create a variable without data
  // 1. create a variable without data
  late final name4;
  // 2. do sth, go to api
  // print(name4); // protect you against your mistakes. kind of null safety
  name4 = 'hyowon';

  // const
  const max_allowed_price = 123000;

// Null safety
  // isEmpty(null);  // without null safety => The argument type 'Null' can't be assigned to the parameter type 'String'
  String? hyowon = 'hyowon';
  hyowon = null;
  // hyowon.length; // compiler knows that it might be null
  if (hyowon != null) {
    hyowon.isNotEmpty;
  }
  hyowon?.isNotEmpty;
}
