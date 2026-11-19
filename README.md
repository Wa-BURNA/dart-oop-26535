### Part 5

**My prediction:**

I predicted that the first output would be -5 and the second output would be 1.

**Correct reasoning:**

The first output is 1 because the setter only accepts values greater than or equal to zero. Therefore, assigning -5 is rejected, and the previous value remains 1.

The second output is 5 because BigBag overrides add() and calls the parent's add() method twice every time it is executed. Two calls to b.add() increase the value to 4, and adding another 1 makes it 5.

**Expected output:**
```text
1
5
```