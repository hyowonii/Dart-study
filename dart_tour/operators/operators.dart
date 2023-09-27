void main() {
  int number = 2;

  print(number);

  print('------------------------');
  print(number % 2);
  print(number % 3);

  print('------------------------');
  print(number);

  number++; // number+1
  print(number);

  number--;
  print(number);

  print('------------------------');
  double num = 4.0;
  print(num);

  num += 1;
  print(num);

  num -= 1;
  print(num);

  print('------------------------');
  double? num2 = 4.0;
  print(num2);

  num2 = null;
  print(num2);

  num2 ??= 3.0;
  print(num2);

  print('------------------------');
  dynamic number2 = 1;

  print(number2 is int);
  print(number2 is String);

  print(number2 is! int);
  print(number2 is! String);
}
