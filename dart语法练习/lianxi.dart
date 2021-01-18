
main(List<String> args) {
  var letters = ['a','b','c','d'];
  print('&letters ${letters.runtimeType}');
  List numbers = [2,2,5,5,5,2,3,4];
  // numbers.add(6);
  // numbers.removeAt(1);
  numbers = Set.from(numbers).toList();
  print('$numbers ${numbers.runtimeType}');
  var infoMap = {'name':'why','age':18};
  print('$infoMap ${infoMap.entries}');
   print('$infoMap ${infoMap.containsKey('age')}');

   sayHollow2("hengyumin",age:18);
   test1((num1, num2){
     return num1 + num2;
   });

   var name = null;
   name ??= "lilei";
   print(name);
}

void sayHollow(String name,[int age, double height]){
  print( age); 
} 
void sayHollow2(String name,{int age, double height}){
  print( age);
}
 
typedef Calculate = int Function(int num1,int num2);

void test1(Calculate calc){
  print(calc(20,30));
}