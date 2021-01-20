// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';

void main() => runApp(MyApp());

// 1、将StatelessWidget转成StatefulWidget快键键alt+Enter
// 2、将build出来的Widget抽取到一个单独的Widget中的快捷键:alt + w
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
        title: Text("基础Widget"),
      ),
      body: MyHomeContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=> print("FloatingActionButton"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class MyHomeContent extends StatefulWidget {
  @override
  _MyHomeContentState createState() => _MyHomeContentState();
}

class _MyHomeContentState extends State<MyHomeContent> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("RaisedButton"),
        textColor: Colors.red,
        color: Colors.orange,
        onPressed: () =>print("RaisedButton_click")
    ),;
  }
}

class BtnDemo extends StatelessWidget {
  const BtnDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text("RaisedButton"),
            textColor: Colors.red,
            color: Colors.orange,
            onPressed: () =>print("RaisedButton_click")
        ),
        FlatButton(
            child: Text("FlatButton"),
            textColor: Colors.white,
            color: Colors.red,
            onPressed: () =>print("FlatButton_click")
        ),
        OutlineButton(
            child: Text("OutlineButton"),
            textColor: Colors.red,
            color: Colors.greenAccent,
            onPressed: () =>print("OutlineButton_click")
        ),
        FlatButton(
            color:Colors.amberAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.favorite,color: Colors.red),
                Text("喜欢作者")
              ],
            ),
            onPressed: () =>print("CustomBtn_click")
        ),
      ],
    );
  }
}
