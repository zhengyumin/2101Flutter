import 'dart:math';

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
            primarySwatch: Colors.blue, splashColor: Colors.transparent
        ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:3,
              mainAxisSpacing:10,
              crossAxisSpacing:10,
              childAspectRatio:1
          ),
          itemBuilder: (BuildContext context, int index){
            return Container(
                color: Color.fromARGB(255, Random().nextInt(256),Random().nextInt(256), Random().nextInt(256))
            );
          }
      ),
    );
  }
}

class GridViewExtDemo extends StatelessWidget {
  const GridViewExtDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:150,
          mainAxisSpacing:10,
          crossAxisSpacing:10,
          childAspectRatio:1
      ),
      children: List.generate(20, (index) {
        return Container(
            color: Color.fromARGB(255, Random().nextInt(256),Random().nextInt(256), Random().nextInt(256))
        );
      }),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:4,
          mainAxisSpacing:10,
          crossAxisSpacing:10,
          childAspectRatio:1
      ),
      children: List.generate(20, (index) {
        return Container(
            color: Color.fromARGB(255, Random().nextInt(256),Random().nextInt(256), Random().nextInt(256))
        );
      }),
    );
  }
}
