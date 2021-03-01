main(List<String> args) {
  print("start");
  Future.value("哈哈哈").then((res) {
    print(res);
  });

  Future.error("错误信息").catchError((err) {
    print(err);
  });

  Future<String>.delayed(Duration(seconds: 2), () {
    return "Hello World";
  }).then((res) {
    print(res);
    return "Hello World2";
  }).then((res) {
    print(res);
  });
  print("end");
}
