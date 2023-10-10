void main() {
  Football mancity =
      const Football('Mancity', ["KDB", "Halland", "Alvarez"]); // new 있/없 동일
  Football tottenham = Football.fromList([
    'Tottenham',
    ['Son'],
  ]);

  mancity.introduce();
  tottenham.introduce();

  print(mancity.firstMember);
  tottenham.firstMember = "Lloris"; // 우항이 setter의 파라미터 값으로 들어감
  print(tottenham.members);
}

// 클래스 정의
class Football {
  // 멤버 변수(클래스에 종속되는 변수)
  final String team;
  final List<String> members;

  // constructor(생성자)
  // Football(team): this.team = team;
  const Football(this.team, this.members);
  Football.fromList(List values)
      : this.team = values[0],
        this.members = values[1];

  // 메소드(클래스에 종속되는 함수)
  void introduce() {
    print('team ${team} : ${members}');
  }

  // getter
  String get firstMember {
    return this.members[0];
  }

  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}
