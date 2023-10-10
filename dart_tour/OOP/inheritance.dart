void main() {
  print('------ Idol ------');
  Idol infinite = Idol(name: '인피니트', membersCount: 6);
  infinite.sayName();
  infinite.sayMembersCount();
  // infinite.sayFemale();  // error
  // infinite.sayMale();  // error

  print('------ GirlGroup ------');
  GirlGroup apink = GirlGroup('Apink', 5);
  apink.sayName();
  apink.sayMembersCount();
  apink.sayFemale();

  print('------ BoyGroup ------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print('------ Type Comparison ------');
  print(infinite is Idol);
  print(infinite is BoyGroup);
  print(infinite is GirlGroup);

  print('------ Type Comparison 2 ------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('------ Type Comparison 3 ------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}

// 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print('저는 ${this.name} 입니다.');
  }

  void sayMembersCount() {
    print('${this.name}은 ${this.membersCount}명 입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(
    String name,
    int membersCount,
  ) : super(
          name: name,
          membersCount: membersCount,
        );

  sayFemale() {
    print('저는 여자 아이돌입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(
    String name,
    int membersCount,
  ) : super(
          name: name,
          membersCount: membersCount,
        );
  sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}
