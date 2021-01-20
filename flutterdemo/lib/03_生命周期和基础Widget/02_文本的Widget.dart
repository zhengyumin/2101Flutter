// import 'dart:html';

import 'package:flutter/material.dart';

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
        body: MyHomeContent()
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
    return TextDemo();
  }
}


class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children:[
              TextSpan(text: "hello world",style: TextStyle(fontSize: 20,color:Colors.red)),
              TextSpan(text: "hello flutter",style: TextStyle(fontSize: 20,color:Colors.blue)),
              WidgetSpan(child: Icon(Icons.add_ic_call)),
              TextSpan(text: "hello dart",style: TextStyle(fontSize: 20,color:Colors.purple)),
            ]
        )
    );
  }
}

