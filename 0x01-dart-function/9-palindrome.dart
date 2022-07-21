bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String r = s.split('').reversed.join();
  return r == s;
}
