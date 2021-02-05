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

  @override
  Widget build(BuildContext context) {

    return TextFieldDemo();
  }
}

class TextFieldDemo extends StatelessWidget {

  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data:ThemeData(
          primaryColor: Colors.red
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children:<Widget>[
              TextField(
                  controller: usernameTextEditController,
                  decoration: InputDecoration(
                    labelText: "username",
                    icon:Icon(Icons.people),
                    hintText: "请输入y用户名",
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.red[100],

                  ),
                  onChanged:(value){
                    print("onChange:$value");
                  },
                  onSubmitted:(value){
                    print("onSubmitted:$value");
                  }
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordTextEditController,
                decoration: InputDecoration(
                  labelText: "password",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 32,
                child: FlatButton(
                    child: Text("登 录", style: TextStyle(fontSize: 20, color: Colors.white)),
                    color: Colors.blue,
                    onPressed: (){
                      final name = usernameTextEditController.text;
                      final password = passwordTextEditController.text;
                      print("账号:$name 密码:$password");
                    }
                ),
              )
            ]
        ),
      ),
    );
  }
}

