import 'dart:convert';

Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    var userData = await fetchUser();
    print(jsonDecode(userData)['id']);
  } catch (e) {
    print('error caught: ${e}');
  }
}
