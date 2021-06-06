import "dart:io";

main(List<String> args) {
  print("main function start");
  var result = getNetworkData("argment").then((res) {
    print(res);
  });
  print(result);
  print("main function end");
}

/**
 * await关键字必须存在于async函数中
 * 返回的时候并不需要包装一个Future，直接返回即可，但是返回值会默认被包装在一个Future中；
 */

Future getNetworkData(String arg) async {
  var result = await Future.delayed(Duration(seconds: 1), () {
    return "network data";
  });

  return "请求到的数据：" + result + arg;
}
