import 'dart:math';

String longestUniqueSubstring(String str) {
  Map<String, int> visited = {};
  String output = "";
  for (int start = 0, end = 0; end < str.length; end++) {
    String currChar = str[end];
    if (visited.containsKey(currChar)) {
      start = [visited[currChar]! + 1, start].reduce(max);
    }
    if (output.length < end - start + 1) {
      output = str.substring(start, end + 1);
    }
    visited[currChar] = end;
  }
  return output;
}
