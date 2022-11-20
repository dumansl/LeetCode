void main(List<String> args) {
  List<int> addTwoNumbers(List<int> l1, List<int> l2) {
    List<int> sum = [];
    List<int> smallList = l1.length < l2.length ? l1 : l2;
    print(smallList);
    List<int> bigList = l1.length < l2.length ? l2 : l1;
    print(bigList);

    int difference = bigList.length - smallList.length;

    if (difference != 0) {
      for (int i = 0; i <= difference; i++) {
        smallList.add(0);
      }
    }
    for (int i = 0; i <= bigList.length - 1; i++) {
      int result = l1[i] + l2[i];
      sum.add(result);
    }
    return sum;
  }

  print(addTwoNumbers([9, 9, 9, 9, 9, 9, 9], [9, 9, 9, 9]));
}
