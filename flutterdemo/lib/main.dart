// import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
          title: Text("商品列表"),
        ),
        body: MyHomeContent("你好啊")
    );
  }
}

// class MyHomeContent extends StatelessWidget {
//   final String message;
//   MyHomeContent(this.message){
//     print("构建函数被调用");
//   }
//   @override
//   Widget build(BuildContext context) {
//     print("调用build方法");
//     return Text(message);
//   }
// }

class MyHomeContent extends StatefulWidget {
  MyHomeContent(){
    print("1、调用MyHomeContent的constructor");
  }
  @override
  _State createState() => _State();
}

class _State extends State<> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class MyHomeContent extends StatefulWidget {
//   final String message;
//   MyHomeContent(this.message);
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeContentState();
//   }
// }
//
// class _HomeContentState extends State<StatefulWidget> {
//   int _counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _getButtons(),
//             Text("当前计数:$_counter",style: TextStyle(fontSize: 25)),
//             Text("传递信息:${widget.message}",style: TextStyle(fontSize: 20))
//           ],
//         )
//     );
//   }
//
//   Widget _getButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         RaisedButton(
//             child: Text("+", style: TextStyle(fontSize: 20, color: Colors.white)),
//             color: Colors.pink,
//             onPressed:(){
//               setState(() {
//                 _counter ++;
//               });
//             }
//         ),
//         RaisedButton(
//             child: Text("-", style: TextStyle(fontSize: 20, color: Colors.white)),
//             color: Colors.purple,
//             onPressed:(){
//               setState(() {
//                 _counter --;
//               });
//             }
//         )
//       ],
//     );
//   }
// }


