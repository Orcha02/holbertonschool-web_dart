Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

Future<void> usersCount() async {
  var count = await fetchUsersCount();
  print(count);
}
