import '../01_Dart基本语法/01_声明变量.dart';

main(List<String> args) {
  var p1 = Person();
  p1.name = "why";
  p1.run();
  p1.eat();

  //级联运算符
  var p2 = Person()
        ..name = "why"
        ..eat()
        ..run();
}

class Person{
  String name;
  void run(){
    print("running");
   }

   void eat(){
     print("eating");
   }
}