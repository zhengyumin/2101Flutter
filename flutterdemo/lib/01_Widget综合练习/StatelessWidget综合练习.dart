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
        body: MyHomeContent()
    );
  }
}

class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyHomeProductItem("Apple1","Macbook1","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576150388988&di=46ba71c0a11f90536eac752bddbe1379&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsx%2Fcrawl%2Fw300h300%2F20180302%2FeXad-fwnpcnt3056981.jpg"),
        MyHomeProductItem("Apple2","Macbook2","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576150390967&di=c1d9ebd44b0988c1dfc2ccfcd799cb0c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201812%2F02%2F20181202192022_jkdmo.thumb.700_0.jpg"),
        MyHomeProductItem("Apple3","Macbook3","http://mmbiz.qpic.cn/mmbiz/PwIlO51l7wuFyoFwAXfqPNETWCibjNACIt6ydN7vw8LeIwT7IjyG3eeribmK4rhibecvNKiaT2qeJRIWXLuKYPiaqtQ/0")
      ],
    );
  }
}

class MyHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  final style1 = TextStyle(fontSize: 25,color:Colors.orange);
  final style2 = TextStyle(fontSize: 20,color:Colors.red);

  MyHomeProductItem(this.title,this.desc,this.imageURL);

  // 抽象类查看子类快捷键 command + alt + B
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
              width: 5,//设置边宽宽度
              color: Colors.black12
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: style1),
          SizedBox(height: 8),
          Text(desc, style: style2),
          SizedBox(height: 8),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
