import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  @override
  _BannersState createState() => new _BannersState();
}

class _BannersState extends State<Banners> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//
//      ),
    backgroundColor: Colors.black,
      body: new Container(
//        height: 200.0,
//        width: 300.0,
//        child: new Banner(
//        location: BannerLocation.topRight,
//        message: "text",
//        color: Colors.red,
//      ),
        child: new Center(
//          child: new Image.asset("images/girl.jpg"),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset("images/Young-Girl.png", scale: 0.5,),
              new SizedBox(height: 20.0,),
              new Text("XKSKG", style: Theme.of(context).textTheme.display2,)
              ],
          ),
        ),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: <Color>[Colors.blue, Colors.purple],
//            stops: <double>[
//              0.5,
////              0.25,
////              0.5,
////              0.75,
//              1.0
//            ],
//        tileMode: TileMode.mirror
          ),
        ),
      ),
    );
  }
}
