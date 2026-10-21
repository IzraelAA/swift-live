void main() {
  final scores = [88, 84, 100, 92, 70, 76, 76, 84, 86, 98];

  // 1. Print every number between 20 and 100 (inclusive) that is divisible by 3.
  //    Expected: 21, 24, 27 ... 99 (27 numbers)
  final divisibleByThree = [
    for (var i = 20; i <= 100; i++)
      if (i % 3 == 0) i,
  ];
  print(divisibleByThree.join(', '));

  // 2. Find the class average of the following test scores, rounded to one decimal place.
  //    Expected: 85.4
  final average = scores.reduce((a, b) => a + b) / scores.length;
  print(average.toStringAsFixed(1));
}
