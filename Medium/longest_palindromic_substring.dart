void main(List<String> args) {
  lengthOfLongestSubstring("abcabcef");
}

String lengthOfLongestSubstring(String s) {
  String sub = '';
  for (int i = 0; i < s.length; i++) {
    if (!sub.contains(s[i])) {
      sub += s[i];
    } else {
      i = i - sub.length;
      sub = '';
    }
  }
  print(sub);
  return sub;
}
