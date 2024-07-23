void main(List<String> args) {
  intToRoman(3995);
}

String intToRoman(int num) {
  String convertRoman = "";
  Map<int, String> roman = {
    1000: "M",
    900: "CM",
    500: "D",
    400: "CD",
    100: "C",
    90: "XC",
    50: "L",
    40: "XL",
    10: "X",
    9: "IX",
    5: "V",
    4: "IV",
    1: "I",
  };
  if (0 <= num && num <= 3999) {
    for (int currentNumber in roman.keys) {
      int remainder = num ~/ currentNumber;
      if (remainder != 0) {
        convertRoman += roman[currentNumber]! * remainder;
        num = num - currentNumber * remainder;
      }
    }
    return convertRoman;
  } else {
    return "";
  }
}
