main(List<String> args) {
  sayHollow("why");
  sayHollow1("why",18,1.88);
  sayHollow2("why",age:18);
}

// 必选参数：必须传
void sayHollow(String name){
  print(name);
}

// dart中没有重载函数
// 可选参数:位置可选参数
// 只有可选参数有默认值

// 位置可选参数:[int age, double height];
// 实参和形参在匹配时是根据位置匹配
void sayHollow1(String name,[int age, double height]){
  print(age); 
} 

//命名可选参数
void sayHollow2(String name,{int age, double height}){
  print(age);
}
 