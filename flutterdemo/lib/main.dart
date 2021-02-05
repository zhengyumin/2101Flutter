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

    return Column(
      children: <Widget>[
        PaddingDemo(),
        Text("你好啊李银河",style: TextStyle(fontSize: 30,backgroundColor:Colors.red)),
        Text("你好啊李银河",style: TextStyle(fontSize: 30,backgroundColor:Colors.red)),
      ],

    );
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(
         bottom: 10
       ),
       child: Text(
         "你好啊李银河",
         style: TextStyle(fontSize: 30,backgroundColor:Colors.red),
        )
     );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(1,1),
      // widthFactor: 5,
      // heightFactor: 5,
      child: Icon(Icons.pets, size:50),
    );
  }
}
