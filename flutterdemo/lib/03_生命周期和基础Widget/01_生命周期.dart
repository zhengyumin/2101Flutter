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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> widgets = [MyHomeContent()];
  @override
  Widget build(BuildContext context) {
    print("0、调用__MyHomePageState的build");
    return Scaffold(
      appBar: AppBar(
          title:Text("商品列表")
      ),
      body: Column(
        children: [MyHomeContent()],
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            // widgets.insert(0, Text("Hello world"));
          });
        },
      ),
    );
  }
}

class MyHomeContent extends StatefulWidget {
  MyHomeContent(){
    print("1、调用MyHomeContent的constructor");
  }
  @override
  _HomeContentState createState(){
    print("2、调用MyHomeContent的createState");
    return _HomeContentState();
  }
}

class _HomeContentState extends State<MyHomeContent> {
  int _counter = 0;
  _HomeContentState(){
    print("3、调用_HomeContentState的constructor");
  }
  @override
  void initState() {
    //这里必须调super
    super.initState();
    print("4、调用_HomeContentState的initState");
  }
  @override
  void didUpdateWidget(covariant MyHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("5、调用_HomeContentState的didUpdateWidget");
  }
  @override
  void didChangeDependencies() {

    super.didChangeDependencies();
    print("6、调用_HomeContentState的didChangeDependencies");
  }
  @override
  Widget build(BuildContext context) {
    print("7、调用_HomeContentState的build");
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              _counter++;
            });
          },
        ),
        Text("数字:$_counter")
      ],
    );
  }

  @override
  void dispose() {
    print("8、调用_HomeContentState的dispose");
    super.dispose();
  }
}


