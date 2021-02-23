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
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue, splashColor: Colors.transparent),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: MyHomeContent(),
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
    return Container(
      height: 300,
      child: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index){
          return Text("Hellow World: $index", style: TextStyle(fontSize: 20));
        },
        separatorBuilder:(BuildContext context, int index){
          return Divider(color: Colors.red, height: 30, indent: 30, endIndent: 30, thickness: 10,);
        },
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 60,
        itemBuilder: (BuildContext context, int index){
          return Text("Hellow World: $index", style: TextStyle(fontSize: 20));
        }
    );
  }
}

class ListViewDemo1 extends StatelessWidget {
  const ListViewDemo1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,
      itemExtent: 100,
      // reverse: true,
      children: List.generate(100, (index) {
        return ListTile(
          leading: Icon(Icons.people),
          trailing: Icon(Icons.delete),
          title: Text("联系人${index + 1}"),
          subtitle: Text("联系人电话号码：188283823838"),
        );
      }),
    );
  }
}
