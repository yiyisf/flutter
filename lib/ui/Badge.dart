import 'package:flutter/material.dart';

class Badge extends StatefulWidget {
  @override
  _BadgeState createState() => new _BadgeState();
}

class _BadgeState extends State<Badge> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
    body: new Center(
      child: new Stack(
        alignment: FractionalOffset.topRight,
      children: <Widget>[
        new RaisedButton(
          child: const Text("AA"),

        onPressed: (){},
        ),
//        new Banner(message: "TEST", location: BannerLocation.topRight,),
        new CircleAvatar(child: new Text("3", style: new TextStyle(fontSize: 15.0),), radius: 10.0, backgroundColor: Colors.orange,),

        ],
      )
    ),
    );
  }
}
