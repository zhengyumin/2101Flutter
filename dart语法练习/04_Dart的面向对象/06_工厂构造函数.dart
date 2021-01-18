main(List<String> args) {
  //var p1 = Person.withName("zheng");
  final p1 = Person.withName("zheng");//使用final的目的是为了不让别人修改，更安全
  final p2 = Person.withName("zheng");

  print(identical(p1,p2));

}

//普通的构造函数:会自动返回创建出来的对象，不能手动返回
//工厂构造函数最大的特点:就是可以手动返回对象
class Person{
  String name;
  String color;

  //用static修饰的属性，表示为类属性
  static final Map<String,Person> _nameCache = {};
  static final Map<String,Person> _colorCache = {};

  factory Person.withName(String name){
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    }else {
      final p = Person(name,"blue");
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withColor(String color){
    if (_colorCache.containsKey(color)) {
      return _nameCache[color];
    }else {
      final p = Person("zheng",color);
      _nameCache[color] = p;
      return p;
    }
  }
  Person(this.name,this.color);
}