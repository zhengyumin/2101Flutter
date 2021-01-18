main(List<String> args) {
  //1、明确变量的声明
  String name = "why";
  //2、类型推导（var/final/const）
  //类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确的类型
  //2.1  var声明变量
  var age = 20;
  age = 30;

  //2.2 final声明常量
  final height = 1.88;
  // height = 2.00; 只能赋值一次

  //2.3 const声明常量
  const address = "常州市";
  // address = "asd";不能再赋值

  //2.3 final和const的区别
  //const必须赋值 常量值
  //final可以通过计算/函数获取一个值(运行期间来获取一个值)

  //p1和p2不是同一个对象
  final p1 = new Person("why"); 
  final p2 = new Person("why");
  print(identical(p1,p2)); 

  //p3和p4是同一个对象,在dart2.0之后const可以省略
  const p3 = const Person("why");
  const p4 = const Person("why");
  print(identical(p3,p4)); 
}

class Person{
  final String name;
  const Person(this.name);
}