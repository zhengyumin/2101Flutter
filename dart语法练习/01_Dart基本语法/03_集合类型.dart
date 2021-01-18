main(List<String> args) {
  //1.列表集合:List:[];
  var names = ["abc","cba","bac"];
  names.add("abc");
  print(names);

  //2.集合Set:{};
  var movies = {"星际穿越","大话西游","盗梦空间"};
  names  = Set<String>.from(names).toList();
  print(names);

  //3.映射Map
  var infoMap = {
    "name" : "why",
    "age": 18
  };
  print("${infoMap.entries},${infoMap.keys}");
  infoMap.remove("name");
  print("${infoMap.entries},${infoMap.keys}");
}