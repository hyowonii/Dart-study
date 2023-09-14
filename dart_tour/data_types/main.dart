void main() {
  String name2 = "hyowon";
  bool alive = true;
  int age2 = 12;
  double money = 69.99;

  num x = 12;
  x = 1.1;

// lists
  var giveMeFive = true;
  var numbers2 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if
  ]; // List<int>
  // if (giveMeFive) numbers.add(5);
  print(numbers2);

  var oldFriends = ['hyowon', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darran',
    for (var friend in oldFriends) "❤️$friend", // collection for
  ];
  print(newFriends);

// string interpolation
  var name = "hyowon";
  var age = 10;
  var greeting =
      'Hello everyone, my name is $name and I\'m ${age + 2} years old';
  print(greeting);

// maps
  var player = {
    'name': 'hyowon',
    'xp': 19.99,
    'superpower': false,
  }; // Map<String, Object>

  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: true,
  };
  Map<List<int>, bool> player3 = {
    [1, 2, 3, 4]: true,
  };
  List<Map<String, Object>> players = [
    {'name': 'hyowon', 'xp': 199999.999},
    {'name': 'hyowon', 'xp': 199999.999}
  ];

// sets
  var numbers = {1, 2, 3, 4}; // Set<int>
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}
