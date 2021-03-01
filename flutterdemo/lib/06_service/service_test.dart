import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutterdemo/06_service/http_request.dart';

class MyHomeContent extends StatefulWidget {
  @override
  _MyHomeContentState createState() => _MyHomeContentState();
}

class _MyHomeContentState extends State<MyHomeContent> {
  @override
  void initState() {
    super.initState();
    // final dio = Dio();
    // dio.get("http://httpbin.org/get").then((res) => print(res));
    // dio.post("http://httpbin.org/post").then((res) => print(res));

    HttpRequest.request("/get", params: {"name": "why", 'age': 18}).then((res) {
      print(res);
    });

    HttpRequest.request("https://httpbin.org/post",
        method: "post", params: {"name": "why", 'age': 18})
        .then((res) {
      print(res);
    }).catchError((err){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(//脚手架
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Row(),
    );
  }
}