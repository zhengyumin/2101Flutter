import 'dart:io';

main(List<String> args) {
  print("main start");

  var future = getNetworkData();

  future.then((String value) {
    print(value);
  }).catchError((err) {
    print(err);
  }).whenComplete(() {
    print('代码执行完成');
  });
  print("main end");
}

Future<String> getNetworkData() {
  return Future<String>(() {
    //将耗时的操作包裹到Future的回调函数中
    //只要有返回结果，那么久执行Future对应的then回调
    // 如果没有结果返回（异常信息），需要在Future回调中抛出一个异常
    sleep(Duration(seconds: 2));
    // return "Hello World";
    throw Exception("我是错误信息");
  });
}
