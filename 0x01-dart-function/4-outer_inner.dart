void outer(String name, String id) {
  String inner() {
    return ('Hello Agent ${name.split(" ")[1][0]}.${name.split(" ")[0]} your id is $id');
  }

  print(inner());
}
