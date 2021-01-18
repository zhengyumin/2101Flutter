import '../01_Dart基本语法/01_声明变量.dart';

main(List<String> args) {

  // 一旦自定义构造函数，默认的构造函数就会被覆盖
  var p1 = Person("why",18);
}

class Person{
  String name; 
  int age;
  // Person(String name,int age){
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name,this.age);
}