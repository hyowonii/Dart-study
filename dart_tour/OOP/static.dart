void main() {
  Employee chorong = Employee('초롱');
  Employee navi = Employee('나비');

  Employee.building = 'n타워'; // static 변수는 class에 귀속됨

  chorong.printSth();
  navi.printSth();
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속됨

  static String? building;

  String name;

  Employee(
    this.name,
  );

  void printSth() {
    print('제 이름은 ${name}이고 ${building}에서 근무합니다.');
  }
}
