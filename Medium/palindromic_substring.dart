void main(List<String> args) {
  longestPalindrome("s");
}

String longestPalindrome(String s) {
  List<String> list = [];
  List<String> newWordList = [];
  List<String> wordList = s.split("");
  String word = "";
  // Adım 1 : Alt kümeleri bulma
  if (wordList.length == 1) {
    word = wordList[0];
  } else {
    for (var i = 0; i <= wordList.length; i++) {
      for (var j = i + 1; j < wordList.length; j++) {
        if (wordList[i] == wordList[j]) {
          list.add(s.substring(i, j + 1));
        } else {
          word = wordList[0];
        }
      }
    }
    // Adım 2 : Palindromic bulma
    for (var loop in list) {
      final output = loop.split('').reversed.join('');
      if (output == loop) {
        newWordList.add(loop);
      }
    }
    for (String i in newWordList) {
      if (i.length >= word.length) {
        word = i;
      }
    }
  }
  return word;
}
