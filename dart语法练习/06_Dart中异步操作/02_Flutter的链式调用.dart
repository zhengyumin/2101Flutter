import 'dart:io';

main(List<String> args) {
  Future(() {
    sleep(Duration(seconds: 2));
    return "第一次调用";
    // throw Exception("异常");
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 2));
    return "第二次调用";
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 2));
    // return "第三次调用";
    throw Exception("异常");
  }).then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });
}
