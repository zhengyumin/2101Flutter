main(List<String> args) {
  final sm = SuperMan();
  sm.running();
  sm.flying();
}

mixin Runner {
  void running() {
    print("Runner running");
  }
}

mixin Flyer {
  void flying() {
    print("flying");
  }
}

class Animal {
  void eating() {
    print("动物吃东西");
  }

  void running() {
    print("Animal running");
  }
}

class SuperMan extends Animal with Runner, Flyer { 
  @override
  void eating() {
    // TODO: implement eating
    super.eating();
  } 
  void running() {
    print("SuperMan running");
  }
}

