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
    return Image(
      // 1、在Flutter项目中创建一个文件夹，存储图片
      // 2、在pubspec.yaml中进行配置
      // 3、使用图片
        image: AssetImage("assets/images/wisdomSite_banner.png")
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // Image.network(imageUrl);
    return Image(
      // color: Colors.green,
      // colorBlendMode: BlendMode.colorBurn,
        image:NetworkImage(imageUrl),
        width: 300,
        height: 300,
        fit: BoxFit.contain,
        // repeat: ImageRepeat.repeatY,
        alignment: Alignment(-1,-0.5)
    );
  }
}

