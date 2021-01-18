main(List<String> args) {
  var p = Person();
  p.name = "zheng";

  //通过getter和setter访问
  p.setName = "lilei";
  print(p.getName);
}


class Person {
  String name;

  //setter
  set setName(String name){
    this.name = name;
  }

  String get getName {
    return name;
  }
}