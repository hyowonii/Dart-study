class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // method(makge object)
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age) // positional parameters
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'],
        age = 25;

  void sayHello() {
    print("Hi my name is $name.");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: 'hyowon',
    age: 25,
  );
  player.sayHello();
  var player2 = Player.createRedPlayer('lala', 30);
  player2.sayHello();

  var apiData = [
    {"name": "hyowon", "team": "red", "xp": 0},
    {"name": "lala", "team": "red", "xp": 0},
    {"name": "dal", "team": "red", "xp": 0}
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
