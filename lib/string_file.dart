// balanced_substrings.dart

List<String> getBalancedSubstrings(String S) {
  List<String> result = [];
  int maxLen = 0;

  for (int i = 0; i < S.length - 1; i++) {
    for (int j = i + 1; j < S.length; j++) {
      String substring = S.substring(i, j + 1);
      if (isBalanced(substring) && substring.length >= maxLen) {
        if (substring.length > maxLen) {
          result.clear();
          maxLen = substring.length;
        }
        result.add(substring);
      }
    }
  }

  return result;
}

bool isBalanced(String s) {
  Set<String> uniqueChars = s.split('').toSet();
  if (uniqueChars.length == 2) {
    int count1 = s.split(uniqueChars.elementAt(0)).length - 1;
    int count2 = s.split(uniqueChars.elementAt(1)).length - 1;
    return count1 == count2;
  }
  return false;
}
