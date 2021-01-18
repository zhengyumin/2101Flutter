import 'utils/math_utils.dart' as mUtils;
// import 'utils/math_utils.dart'  show sum;
import 'dart:math';
// import 'utils/math_utils.dart'  hide mul;

// 1、as关键字给库起别名
// 2、默认情况下导入一个库时，导入这个库中所有的内容
// *show:执行要导入的内容
// *hide:隐藏要导入的内容,导入其他
// 3、公共的dart文件的抽取:export
 
main(List<String> args) {
  sum(2, 3);
  mUtils.sum(5, 2);
  min(1, 2);
  // _min(1,3);//下划线是区分私有和公有的一种方式
}

void sum (num1, num2){
  print(num1 + num2);
} 