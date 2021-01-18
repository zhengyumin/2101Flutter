main(List<String> args) {
  
}

// dart没有哪一个关键字是定义接口的
// 没有这些关键字interface/protocol
// 默认情况下所有类都是隐式接口
// dart支持单继承
// 当一个类当做接口使用时，那么实现这个接口的类，必须实现接口的所有方法

class Runing {
  void running (){

  }
}

class Flyer {
  void flying() {

  }
}

class Animal {
  void eating() {

  }
}

class SuperMan extends Animal implements Runing, Flyer {
  @override
  void eating() {
   
    super.eating();
  }
  @override 
  void running (){
     
  } 

  @override
  void flying (){

  }
}