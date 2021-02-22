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


    /**
     *  Stack默认大小是包裹内容的
     *  - alignment: 从什么位置开始排布所有的子widget
     *  - fit: expand 将元素拉伸到尽可能大
     *  - overflow: 超出部分如何处理
     */
    return  StackDemo2();
  }
}

class StackDemo2 extends StatefulWidget {
  const StackDemo2({
    Key key,
  }) : super(key: key);

  @override
  _StackDemo2State createState() => _StackDemo2State();
}

class _StackDemo2State extends State<StackDemo2> {
  bool _isFavor = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      fit: StackFit.loose,
      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset("assets/images/wisdomSite_banner.png",),
        Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding:  EdgeInsets.symmetric(horizontal:8),
              color: Color.fromARGB(150, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("进击的巨人", style:  TextStyle(fontSize: 20, color: Colors.white)),
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: _isFavor? Colors.red : Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _isFavor = !_isFavor;
                        });
                      }
                  )
                ],
              ) ,
            )
        ),

      ],
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      fit: StackFit.loose,
      overflow: Overflow.visible,
      children: <Widget>[
        Image.asset("assets/images/wisdomSite_banner.png", width: 300, fit: BoxFit.cover,),
        Positioned(
            right: 20,
            bottom: 20,
            child: Container(width: 150, height: 100, color: Colors.red,)
        ),
        Positioned(
            left: 20,
            bottom: 20,
            child: Text("进击的巨人")
        )
      ],
    );
  }
}

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          /**
           *  Expanded -> Flexible(fit: FlexFit.tight)
           */
          Expanded(
              flex: 1,
              child: Container(width: 80,height: 60, color: Colors.red)
          ),
          Expanded(
            flex: 1,
            child:  Container(width: 120,height: 100, color: Colors.green),
          ),

          Expanded(
              flex: 2,
              child: Container(width: 290,height: 80, color: Colors.blue)
          ),
          Container(width: 50,height: 120, color: Colors.orange),
        ],
      ),
    );
  }
}


class ButtonRowDemo extends StatelessWidget {
  const ButtonRowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color:Colors.red,
      child: Row(
        mainAxisSize:MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.bug_report),
          Text("bug报告")
        ],
      ),
      onPressed: () => print("按钮被点击"),
    );
  }
}

// Row/Column: 继承自Flex
// Flex: CSS Flex布局
// Axis.vertical: Column
// Axis.horizontal: Row
class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
      textBaseline: TextBaseline.ideographic,
      children: <Widget>[
        Container(width: 80,height: 60, color: Colors.red,child: Text("Hellxo",style: TextStyle(fontSize: 20))),
        Container(width: 120,height: 100, color: Colors.green,child: Text("Woxrld",style: TextStyle(fontSize: 30))),
        Container(width: 90,height: 80, color: Colors.blue,child: Text("abxc",style: TextStyle(fontSize: 12))),
        Container(width: 50,height: 120, color: Colors.orange,child: Text("cxba",style: TextStyle(fontSize: 40))),
      ],
    );
  }
}
/**
 *  Row特点:
 *  - 水平方向尽可能占据比较大的空间
 *  - 水平方向也希望包裹内容，那么设置mainAxisSize = min
 *  - 垂直方向包裹内容
 *  MainAxisAlignment:
 *  - start:主轴开始位置挨个摆放元素
 *  - end:主轴结束位置挨个摆放元素
 *  - center:主轴中心点对齐
 *  - spaceBetween: 左右两边的间距为0，其他元素之间平分间距
 *  - spaceAround: 左右两边的间距是其他元素之间间距的一半
 *  - spaceEvenly: 所有的间距平分空间
 *  CrossAxisAlignment:
 *  - start: 交叉轴开始位置挨个摆放元素
 *  - end: 交叉轴结束位置挨个摆放元素
 *  - center: 交叉轴中心点对齐
 *  - baseline: 基线对齐(必须有文本的时候才起效果)
 *  - stretch: 将所有的子Widget交叉轴的高度拉伸到最大
 */

class RowDemo extends StatelessWidget {
  const RowDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.ideographic,
        children: <Widget>[
          Container(width: 80,height: 60, color: Colors.red,child: Text("Hellxo",style: TextStyle(fontSize: 20))),
          Container(width: 120,height: 100, color: Colors.green,child: Text("Woxrld",style: TextStyle(fontSize: 30))),
          Container(width: 90,height: 80, color: Colors.blue,child: Text("abxc",style: TextStyle(fontSize: 12))),
          Container(width: 50,height: 120, color: Colors.orange,child: Text("cxba",style: TextStyle(fontSize: 40))),
        ],
      ),
    );
  }
}
