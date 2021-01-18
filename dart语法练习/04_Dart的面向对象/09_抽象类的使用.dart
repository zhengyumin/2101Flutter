main(List<String> args) {
  // var s = Shape();
}

// 抽象类不能实例化,但可以通过工厂构造函数实例化
abstract class Shape {
  int getArea();
  String getInfo() {
    return "形状";
  }

  // factory Shape(){
  //   return null;
  // }
}

//继承抽象类后，必须实现抽象类的抽象方法
class Rectangle extends Shape {
  @override
  int getArea() {
    return 100;
  }
   
   
}