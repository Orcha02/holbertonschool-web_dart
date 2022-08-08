import '2-util.dart';

getUser() async {
  try {
    print(await fetchUser());
  } catch (e) {
    print("error caught: $e");
  }
}
