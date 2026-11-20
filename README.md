# Dart OOP Assignment: Kigali Bus Card

**Name:** NTAGANDA Moise  
**Student ID:** 26535/2024  
**GitHub username:** Wa-BURNA

---

## Part 1: The BusCard class

### Why is there no setter for balance?

There is no setter for balance because we want to protect the card balance. The balance should only change through the `topUp()` and `pay()` methods. This prevents users from changing the balance directly or entering an incorrect amount.

---

## Part 2: StudentCard using inheritance

### What does `~/` do?

The `~/` operator performs integer division. It divides two numbers and returns the whole-number result without the decimal part.

For example, `237 * 17 / 100` gives `40.29`, while `237 * 17 ~/ 100` gives `40`.

---

## Part 3: Use your classes in main()

### My numbers

- D = 24
- L = 4
- Starting balance = 1240 RWF
- Bus fare = 224 RWF
- Student discount = 14%

### Output of main.dart

```text
Error: name too short
Owner: Ama | Balance: 1240 RWF
Owner: NTAGANDA Moise | Balance: 1240 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 224 RWF
Paid 224 RWF
Owner: NTAGANDA Moise | Balance: 2792 RWF
Student discount: 31 RWF
Paid 193 RWF
Owner: NTAGANDA Moise | Balance: 1047 RWF
Student card: 14% off
```

---

## Part 4: Bug hunt

### Bug table

| Bug | The line | Why it is wrong (my words) | My fix |
|---|---|---|---|
| 1 | `String _brand;` and `int _battery;` | Non-nullable fields need initial values before they can be used. | Give them starting values: `String _brand = '';` and `int _battery = 0;`. |
| 2 | `SmartPhone(String brand, int battery, String system) {` | The parent `Phone` constructor is not called with the required brand and battery. | Add `: super(brand, battery)` before the constructor body. |
| 3 | `@override void restart()` | The parent class does not contain a `restart()` method to override. | Add `void restart()` to `Phone`. |
| 4 | `p.battery = 100;` | There is no setter for battery. | Add a setter that accepts values from 0 to 100. |
| 5 | `print(p.battery());` | `battery` is a getter, not a method, so it must not be called with parentheses. | Use `print(p.battery);`. |
| Not a bug | `Phone p = new Phone('Tecno', 50);` | The `new` keyword is allowed in Dart when creating an object. | No fix needed. |

### Output of bug_hunt.dart

```text
100
```

---

## Part 5: Predict the output

### My prediction

```text
1
5
```

The first Bag starts with 0 items. Calling `add()` increases it to 1. Assigning -5 is rejected by the setter because negative values are not allowed, so the value remains 1.

BigBag calls `super.add()` twice every time its `add()` method is called. Calling `b.add()` twice therefore adds 4 items. Then `b.items = b.items + 1` adds 1 more, making 5.

### Real output

```text
1
5
```

### Was I right?

Yes. My prediction was correct because the actual output matches my prediction.
