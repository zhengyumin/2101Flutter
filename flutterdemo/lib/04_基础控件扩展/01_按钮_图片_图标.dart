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
  final imageUrl = "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2595316365,4277938543&fm=26&gp=0.jpg";
  @override
  Widget build(BuildContext context) {
    // Icon字体图标和图片图标
    // 1、字体图标矢量图
    // 2、字体图标可以设置颜色
    // 3、图标很多时，占据空间会更小
    // return Icon(Icons.pets,size: 300, color: Colors.red);
    // return Icon(IconData(0xe90e, fontFamily: 'MaterialIcons'),size: 300, color: Colors.red);
    // 1、0xe91d -> unicode编码
    // 2、设置对应的字体
    return IconExtensionDemo();
  }
}

class IconExtensionDemo extends StatelessWidget {
  const IconExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("\ue90e",style: TextStyle(fontSize: 100,color: Colors.orange,fontFamily:'MaterialIcons' ));
  }
}

class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // 1、占位图问题:FadeInImage
    // 2、图片缓存:1000张 100m
    return FadeInImage(
      fadeInDuration: Duration(milliseconds: 1),
      fadeOutDuration: Duration(milliseconds: 1),
      placeholder: AssetImage("assets/images/wisdomSite_banner.png"),
      image: NetworkImage(imageUrl),
    );
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonTheme(
          minWidth: 30,
          height: 30,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            color: Colors.red,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Text("Flat Button1"),
            textColor: Colors.white,
            onPressed: () {

            },
          ),
        )
      ],
    );
  }
}
