void main(List<String> args) {
  List<int> addTwoNumbers(List<int> l1, List<int> l2) {
    List<int> smallList = l1.length < l2.length ? l1 : l2;
    List<int> bigList = l1.length < l2.length ? l2 : l1;

    int difference = bigList.length - smallList.length;

    if (difference != 0) {
      for (int i = 0; i <= difference; i++) {
        smallList.add(0);
      }
    }

    List<int> sum = List.filled(bigList.length, 0);

    for (int i = 0; i <= bigList.length - 1; i++) {
      int result = l1[i] + l2[i];
      if (i > 0) {
        result += 1;
      }
      if (result >= 10) {
        result = result % 10;
      }
      sum[i] = result;
    }
    return sum;
  }

  print(addTwoNumbers([9, 9, 9, 9, 9, 9, 9], [9, 9, 9, 9]));
}

