main(List<String> args) {
  //1.定义字符串
  var str1 = 'abc';
  var str2 = "abc";
  var str3 = """
  abc
  cba
  nba
  """;
  print("$str3");

  //2.字符串和表达式拼接
  var name = "why";
  var age = 19;
  var height = 1.88;

  //3.${变量}，那么{}可以省略
  var message = "my name is ${name}";
  var message2 = "my name is ${name},type is ${name.runtimeType}";
  print(message);
  print(message2);
}