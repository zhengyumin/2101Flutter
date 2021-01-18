main(List<String> args) {
    var num = sum(20, 30);
    print(num);
}

//返回值类型可以省略，开发中不推荐
int sum(int num1, int num2){
  return num1 + num2;
}