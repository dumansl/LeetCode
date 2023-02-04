void main(List<String> args) {
  intToRoman(120);
}

String intToRoman(int num) {
  if (0 <= num && num <= 3999) {
    String convertRoman = "";
    int index = num.toString().length;
    switch (index) {
      case 4:
        int num4 = num ~/ 1000;
        convertRoman += "M" * num4;
        num = num - (1000 * num4);
        if (num ~/ 900 != 0) {
          convertRoman += "CM";
          num = num - 900;
        }
        if (num ~/ 500 != 0) {
          convertRoman += "D";
          num = num - 500;
        }
        if (num ~/ 400 != 0) {
          convertRoman += "CD";
          num = num - 400;
        }
        int num3 = num ~/ 100;
        convertRoman += "C" * num3;
        num = num - (100 * num3);
        if (num ~/ 90 != 0) {
          convertRoman += "XC";
          num = num - 90;
        }
        if (num ~/ 50 != 0) {
          convertRoman += "L";
          num = num - 50;
        }
        if (num ~/ 40 != 0) {
          convertRoman += "XL";
          num = num - 40;
        }
        int num2 = num ~/ 10;
        convertRoman += "X" * num2;
        num = num - (10 * num2);
        if (num ~/ 9 != 0) {
          convertRoman += "IX";
          num = num - 9;
        }
        if (num ~/ 5 != 0) {
          convertRoman += "V";
          num = num - 5;
        }
        if (num ~/ 4 != 0) {
          convertRoman += "IV";
          num = num - 4;
        }
        int num1 = num ~/ 10;
        convertRoman += "I" * num1;
        num = num - (1 * num1);
        print(convertRoman);
        return convertRoman;
      case 3:
        if (num ~/ 900 != 0) {
          convertRoman += "CM";
          num = num - 900;
        }
        if (num ~/ 500 != 0) {
          convertRoman += "D";
          num = num - 500;
        }
        if (num ~/ 400 != 0) {
          convertRoman += "CD";
          num = num - 400;
        }
        int num3 = num ~/ 100;
        convertRoman += "C" * num3;
        num = num - (100 * num3);
        if (num ~/ 90 != 0) {
          convertRoman += "XC";
          num = num - 90;
        }
        if (num ~/ 50 != 0) {
          convertRoman += "L";
          num = num - 50;
        }
        if (num ~/ 40 != 0) {
          convertRoman += "XL";
          num = num - 40;
        }
        int num2 = num ~/ 10;
        convertRoman += "X" * num2;
        num = num - (10 * num2);
        if (num ~/ 9 != 0) {
          convertRoman += "IX";
          num = num - 9;
        }
        if (num ~/ 5 != 0) {
          convertRoman += "V";
          num = num - 5;
        }
        if (num ~/ 4 != 0) {
          convertRoman += "IV";
          num = num - 4;
        }
        int num1 = num ~/ 10;
        convertRoman += "I" * num1;
        num = num - (1 * num1);
        print(convertRoman);
        return convertRoman;
      case 2:
        if (num ~/ 90 != 0) {
          convertRoman += "XC";
          num = num - 90;
        }
        if (num ~/ 50 != 0) {
          convertRoman += "L";
          num = num - 50;
        }
        if (num ~/ 40 != 0) {
          convertRoman += "XL";
          num = num - 40;
        }
        int num2 = num ~/ 10;
        convertRoman += "X" * num2;
        num = num - (10 * num2);
        if (num ~/ 9 != 0) {
          convertRoman += "IX";
          num = num - 9;
        }
        if (num ~/ 5 != 0) {
          convertRoman += "V";
          num = num - 5;
        }
        if (num ~/ 4 != 0) {
          convertRoman += "IV";
          num = num - 4;
        }
        int num1 = num ~/ 10;
        convertRoman += "I" * num1;
        num = num - (1 * num1);
        print(convertRoman);
        return convertRoman;
      case 1:
        if (num ~/ 9 != 0) {
          convertRoman += "IX";
          num = num - 9;
        }
        if (num ~/ 5 != 0) {
          convertRoman += "V";
          num = num - 5;
        }
        if (num ~/ 4 != 0) {
          convertRoman += "IV";
          num = num - 4;
        }
        int num1 = num ~/ 10;
        convertRoman += "I" * num1;
        num = num - (1 * num1);
        print(convertRoman);
        return convertRoman;
      default:
        return "Please enter a valid number.";
    }
  } else {
    return "Please enter a valid number.";
  }
}
