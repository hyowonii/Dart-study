abstract class Human {
  void walk();
}

enum Team { red, blue }

class Player extends Human {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  @override
  void walk() {
    // TODO: implement walk
    print("I'm walking");
  }

  void sayHello() {
    print("Hi my name is $name.");
  }
}

class Coach extends Human {
  @override
  void walk() {
    // TODO: implement walk
    print("The coach is walking");
  }
}

void main() {
  var hyowon = Player(name: 'hyowon', xp: 1200, team: Team.red)
    ..name = 'hyowonii'
    ..xp = 120000
    ..team = Team.blue
    ..sayHello();

  var potato = hyowon
    ..name = 'potato'
    ..xp = 1500;
}
