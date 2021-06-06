main(List<String> args) {
  var p = Person("why");
  print(p);

  var p1 = Person("why", age: 30);
  print(p1);
}

class Person {
  //final 修饰的变量 一旦赋值后就不能修改了
  final String name;
  final int age;

  Person(this.name, {int age}) : this.age = age ?? 10 {}
  // Person(this.name,{this.age = 10});这样的方式，在括号内只能是赋值语句，不能是表达式

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age";
  }
}
