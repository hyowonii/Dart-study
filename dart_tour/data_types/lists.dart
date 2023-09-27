void main() {
  var numbers = [1, 2, 3, 4]; // List<int>
  print(numbers);
  numbers.add(5);
  print(numbers.first);
  print(numbers.last);
  print(numbers.indexOf(3));

  var giveMeFive = true;
  var numbers2 = [
    1,
    2,
    3,
    '4',
    if (giveMeFive) 5, // collection if
  ]; // List<int>
  // if (giveMeFive) numbers.add(5);
  print(numbers2);
  print(numbers2[1]);
  print(numbers2.length);

  numbers2[1] = 6;
  print(numbers2);

  var oldFriends = ['hyowon', 'lynn'];
  oldFriends.add('nico'); // add
  var newFriends = [
    'lewis',
    'ralph',
    'darran',
    for (var friend in oldFriends) "❤️$friend", // collection for
  ];
  print(newFriends);

  final whereList =
      newFriends.where((friend) => friend == 'ralph' || friend == '❤️nico');
  print(whereList);
  print(whereList.toList());

  List<String> list = ['banana', 'grape'];
  final listMap = list.map((fruit) => 'fruit $fruit');
  print(listMap);

  final reduceList = list.reduce((value, element) => value + ', ' + element);
  print(reduceList);

  final charCount = list.fold<int>(0, (value, elem) => value + elem.length);
  print(charCount);
}
