class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method to show information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up method
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay method
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
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

void main() {
  // My numbers: D = 24, L = 4
  // Starting balance = 1240 RWF, Bus fare = 224 RWF, Discount = 14%

  // Create a card and test the setter
  BusCard card = BusCard('Ama', 1240);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change the owner to your full name, then call showInfo()
  card.owner = 'NTAGANDA Moise';
  card.showInfo();

  // TODO 6: Top up 100 RWF (must be refused), then top up 2000 RWF
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay your bus fare 2 times, then call showInfo()
  card.pay(224);
  card.pay(224);
  card.showInfo();

  // TODO 8: Create a StudentCard with your name, starting balance and discount
  StudentCard studentCard = StudentCard('NTAGANDA Moise', 1240, 14);

  // TODO 9: Pay your bus fare with the student card, then call showInfo()
  studentCard.pay(224);
  studentCard.showInfo();
}
