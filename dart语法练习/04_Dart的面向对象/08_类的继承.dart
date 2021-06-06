main(List<String> args) {
  Future.wait([
    // 2秒后返回结果
    Future.delayed(new Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果
    Future.delayed(new Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results) {
    print(results[0] + results[1]);
  }).catchError((e) {
    print(e);
  });
}

class Animal {
  int age;

  Animal(this.age);
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age); //初始化列表调用父类的构造函数
}
