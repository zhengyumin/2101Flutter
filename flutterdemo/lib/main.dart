import 'package:flutter/material.dart';
import 'dart:math';

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
    return Scaffold(//脚手架
      appBar: AppBar(
        title: Text("基础Widget"),
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
    return CustomScrollViewDemo();
  }
}

class CustomScrollViewDemo extends StatelessWidget {
  const CustomScrollViewDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index){
                    return Container(
                        color: Color.fromARGB(255, Random().nextInt(256),Random().nextInt(256), Random().nextInt(256))
                    );
                  },
                  childCount:20
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1),
            ),
          ),
        )
      ],
    );
  }
}
