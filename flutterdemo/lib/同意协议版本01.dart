class MyContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text("Hello world",
      //   textDirection: TextDirection.ltr,
      //   style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.red
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: true,
              onChanged: (value){
                value = value;
                print(value);
              }
          ),
          Text(
            "同意协议",
            style:TextStyle(fontSize: 18) ,
          )
        ],
      ),
    );
  }
}