void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  Timesfour tf = Timesfour(2);

  print(tf.calculate());
}

// method : class 내부에 있는 함수
// override
class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  // method
  int calculate() {
    return number * 2;
  }
}

class Timesfour extends TimesTwo {
  Timesfour(
    int number,
  ) : super(number);

  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
