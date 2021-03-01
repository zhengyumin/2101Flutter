// import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';
import '07_douban/widgets/star_rating.dart';

void main() => runApp(MyApp());

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
      //脚手架
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Center(child: HYStarRating(rating: 7,maxRating: 10)),
    );
  }
}
