import './part1__BusCard.dart';

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // Override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}
