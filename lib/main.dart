// main.dart
import 'package:flutter_task_3/string_file.dart';

void main() {
  List<String> result1 = getBalancedSubstrings("cabbacc");
  print(result1); // Output: ["abba"]

  List<String> result2 = getBalancedSubstrings("abababa");
  print(result2); // Output: ["ababab", "bababa"]

  List<String> result3 = getBalancedSubstrings("aaaaaaa");
  print(result3); // Output: []
}
