main(List<String> args) {

  // ??= 当原来的变量有值时，那么??=不执行
  // 原来的变量为null,那么将赋值给这个变量
  var name = "why";
  name ??= "lilei";
  print(name);

  //?? 当??前面有值时使用??前面的数据，当??前面的数据为空，那么使用??后面的值
  var name2 = "why";
  var temp = name2 ??"lilei";
  print(temp);
}  