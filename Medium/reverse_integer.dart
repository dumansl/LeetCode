import 'dart:math';

void main(List<String> args) {
  reverse(123);
}

int reverse(int x) {
  String? newNumber;
  int result = 0;
  if (pow(-2, 31).toInt() <= x && x <= (pow(2, 31).toInt() - 1)) {
    if (x < 0) {
      newNumber = (-1 * x).toString();
    } else {
      newNumber = x.toString();
    }
    List<String> numbers = newNumber.split("").toList();
    for (int i = 0; i <= numbers.length - 1; i++) {
      result += int.parse(numbers[i]) * pow(10, i).toInt();
    }
    if (x < 0) {
      result = (-1 * result);
    }
  }
  if (pow(-2, 31).toInt() > result || result > (pow(2, 31).toInt() - 1)) {
    result = 0;
  }
  return result;
}

// Short method

int reversedNumber(int x) {
  int y = x.abs();
  int lastDigit = 0;
  int newX = 0;

  while (y > 0) {
    lastDigit = y % 10;
    y = y ~/ 10;
    newX = newX * 10 + lastDigit;
  }
  return x < 0 ? 0 - newX : newX;
}
