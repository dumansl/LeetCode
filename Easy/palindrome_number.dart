import 'dart:math';

void main(List<String> args) {
  isPalindrome(323);
}

bool isPalindrome(int x) {
  String? newNumber;
  bool palindrome = false;
  int result = 0;
  if (pow(-2, 31).toInt() <= x && x <= (pow(2, 31).toInt() - 1)) {
    if (x < 0) {
      palindrome = false;
    } else {
      newNumber = x.toString();
      List<String> numbers = newNumber.split("").toList();
      for (int i = 0; i <= numbers.length - 1; i++) {
        result += int.parse(numbers[i]) * pow(10, i).toInt();
      }
      if (x == result) {
        palindrome = true;
      }
    }
  }
  return palindrome;
}
