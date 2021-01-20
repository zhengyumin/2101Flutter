// import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
          title: Text("商品列表"),
        ),
        body: MyHomeContent("你好啊")
    );
  }
}

/**
 *  为什么Flutter在设计的时候StatefulWidget的build方法在state中
 *  1、build出来的Widget是需要依赖State中的变量(状态/数据)
 *  2、在Flutter运行过程中
 *  Widget是不断的销毁和创建的
 *  当我们自己的状态改变时，并不希望重新状态一个新的State
 */
class MyHomeContent extends StatefulWidget {
  final String message;
  MyHomeContent(this.message);
  @override
  State<StatefulWidget> createState() {
    return _HomeContentState();
  }
}

class _HomeContentState extends State<MyHomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getButtons(),
            Text("当前计数:$_counter",style: TextStyle(fontSize: 25)),
            Text("传递信息:${widget.message}",style: TextStyle(fontSize: 20))
          ],
        )
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("+", style: TextStyle(fontSize: 20, color: Colors.white)),
            color: Colors.pink,
            onPressed:(){
              setState(() {
                _counter ++;
              });
            }
        ),
        RaisedButton(
            child: Text("-", style: TextStyle(fontSize: 20, color: Colors.white)),
            color: Colors.purple,
            onPressed:(){
              setState(() {
                _counter --;
              });
            }
        )
      ],
    );
  }
}


