void indexain(List<String> args) {
  lengthOfLongestSubstring("pwwkew");
}

int lengthOfLongestSubstring(String s) {
  int index = 0;
  String sub = '';
  for (int i = 0; i < s.length; i++) { 
    if (!sub.contains(s[i])) {
      sub += s[i];
    } else {
      if (index < sub.length) {
        index = sub.length;
      }
      i = i - sub.length;
      sub = '';
    }
  }
  if (sub.length > index) {
    index = sub.length;
  }
  return index;
}
