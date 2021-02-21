// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/**
 *  Widget:
 *  有状态的Widget: StatefulWidget 在运行过程中有一些状态需要改变
 *  无状态的Widget: StatelessWidget 内容是确定没有状态的改变
 */


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个Flutter程序"),
        ),
        body: MyContentBody()
    );
  }
}

class MyContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyContentBodyState();
  }
}

// Stateful不能定义状态 -> 创建一个单独的类，这个类负责维护状态
class MyContentBodyState extends State<StatefulWidget> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value){
              setState(() {
                flag = value;
              });
              print(flag);
            },
          ),
          Text("同意协议",style:TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}