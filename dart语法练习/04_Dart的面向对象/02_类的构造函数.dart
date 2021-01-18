main(List<String> args) {
  var p  = Person.withNameAgeHeight("zheng", 18, 1.88);
  print(p.toString()); 
  
  // object 和  dynamic
  // object 调用方法时编译会报错   
  // dynamic  调用方法时编译不报错，但是运行时会存在安全隐患
  dynamic obj = "why";
  print(obj.substring(1));

  var p2 = Person.fromMap({
    "name":"zheng",
    "age":18,
    "height":1.88
  });
  print(p2);
}

class Person{
  String name;
  int age;
  double height;

  Person(this.name,this.age);
  // Person(this.name,this.age,this.height);dart里面没有函数重载

  //命名构造函数
  Person.withNameAgeHeight(this.name,this.age,this.height);
  Person.fromMap(Map<String,dynamic>map){
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"]; 
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$name $age $height";
  }
}