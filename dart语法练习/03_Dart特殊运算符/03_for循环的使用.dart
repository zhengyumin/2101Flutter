main(List<String> args) {
  for(int i = 0; i < 10; i++){
    print(i);
  }

  var names = ["abc","bac","cba"];
  for(int i = 0; i < names.length; i ++){
    print(names[i]);
  }

  for (var name in names) {
    print(name);
  }
}