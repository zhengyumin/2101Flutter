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
      // debugShowCheckedModeBanner: false,
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
        onPressed: () => print("floatingActionButton click"),
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

    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment(0,0),
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(10),
      child: Text("Hello World"),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
              width: 5,
              color: Colors.purple
          ),
          boxShadow: [
            BoxShadow(color: Colors.orange, offset: Offset(10,10), spreadRadius: 10, blurRadius: 10),
            BoxShadow(color: Colors.red, offset: Offset(-10,-10), spreadRadius: 10, blurRadius: 10),
          ]
      ),

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
      widthFactor: 2,
      heightFactor: 2,
      child: Icon(Icons.pets, size:50),
    );
  }
}
