main(List<String> args) {
  
  // 1、直接找到另外一个定义的函数传进去 
  test(bar);
  // 匿名函数  (参数列表) {函数体}
  test(() {
    print("匿名函数被调用");
  });

  //箭头函数：函数体只有一行代码;
  test( () => print("箭头函数被调用"));

  test1((num1, num2){
    return num1 + num2; 
  });

  test2((num1, num2){
    return num1 + num2; 
  });

  var demo1 = demo();
  print(demo1(30,30));
}


// 函数可以作为另一个函数的参数
void test(Function foo){
   foo();
} 

void bar(){
  print("函数被调用");
}

// 这种方式代码不好阅读
void test1(int foo(int num1, int num2)){
  var num = foo(20,30);
  print(num);
}

//
typedef Calculate = int Function(int num1, int num2);
void test2(Calculate calc){
  var num = calc(20,30);
   print(num);
}

// 函数作为返回值
Calculate demo(){
  return (num1, num2){
     return num1 * num2;
  };

}