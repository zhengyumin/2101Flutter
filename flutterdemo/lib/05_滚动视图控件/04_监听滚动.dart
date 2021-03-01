// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dio/dio.dart';

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
    return MyHomeContent(
    );
  }
}

class MyHomeContent extends StatefulWidget {
  @override
  _MyHomeContentState createState() => _MyHomeContentState();
}

class _MyHomeContentState extends State<MyHomeContent> {
  ScrollController _controller = ScrollController(initialScrollOffset: 200);
  bool _isShowFloatingBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      // print("监听到滚动..:${_controller.offset}");
      setState(() {
        _isShowFloatingBtn =  _controller.offset >= 1000;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    /**
     * 两种方式监听
     *  controller:
     *    1、可以设置默认值offset
     *    2、监听滚动、也可以监听滚动的位置
     *  NotificationListener:
     *    1、开始滚动和结束滚动
     */
    return Scaffold(
      //脚手架
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification){
          if (notification is ScrollStartNotification ){
            print("开始滚动。。。");
          }else if (notification is ScrollUpdateNotification ){
            print("正在滚动。。。总滚动位置:${notification.metrics.maxScrollExtent}  当前位置:${notification.metrics.pixels}");
          }else if (notification is ScrollEndNotification ){
            print("结束滚动。。。");
          }
          return true;
        },
        child: ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text("联系人$index"),
                  leading: Icon(Icons.people)
              );
            }
        ),
      ),
      floatingActionButton: _isShowFloatingBtn? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(
              0, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        },
      ):null,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
}
