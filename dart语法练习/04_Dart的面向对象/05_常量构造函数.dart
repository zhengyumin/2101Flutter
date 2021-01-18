main(List<String> args) {
  const p1 = Person("zheng");
  const p2 = Person("zheng");
  print(identical(p1,p2));
}

class Person{
  final String name;
  const Person(this.name);
}