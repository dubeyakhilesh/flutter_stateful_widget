import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Stateful Example",
      home: MyStateFull(),
    );
  }

}

class MyStateFull extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFriend();
  }

}

class _MyFriend extends State<MyStateFull>{
  var myBestFriend = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInpur){
                setState(() {
                  myBestFriend = userInpur;
                });
              },
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "My best friend is: $myBestFriend"
              ),
            )
          ],
        ),
      ),
    );
  }

}