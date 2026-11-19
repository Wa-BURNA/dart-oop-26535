import 'part1__BusCard.dart';
import 'part2__StudentCard.dart';


void main() {
  // My numbers: D = 35, L = 5
  // Starting balance = 1350 RWF
  // Bus fare = 235 RWF
  // Discount = 15%

  // Create a normal bus card
  BusCard card = BusCard('Moise', 1350);

  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to your full name
  card.owner = 'Ntaganda Moise';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare twice
  card.pay(235);
  card.pay(235);
  card.showInfo();

  // TODO 8: Create a student card
  StudentCard student = StudentCard('Ntaganda Moise', 1350, 15);

  // TODO 9: Pay using student card
  student.pay(235);
  student.showInfo();
}