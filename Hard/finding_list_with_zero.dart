void main() {
  _listWithZeroSum([-2, -4, 4, -1, 2, 1, 0]);
}

void _listWithZeroSum(List<int> numbers) {
  Set<List<int>> numbersList = {};
  int sum = 0;

  for (var i = 0; i < numbers.length; i++) {
    for (var j = i + 1; j < numbers.length; j++) {
      for (var k = j + 1; k < numbers.length; k++) {
        sum = numbers[i] + numbers[j] + numbers[k];
        if (sum == 0) {
          numbersList.add([numbers[i], numbers[j], numbers[k]]);
        }
      }
    }
  }

  print(numbersList);
}
