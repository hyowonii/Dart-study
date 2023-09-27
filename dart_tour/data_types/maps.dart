void main() {
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
}
