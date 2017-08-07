import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatefulWidget {
  @override
  _CircleImageState createState() => new _CircleImageState();
}

class _CircleImageState extends State<CircleImage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new CircleImg(
          image: new NetworkImage(
              "http://mhalabs.org/wp-content/uploads/upme/1451456913_brodie.jpg"),
          padding: 5.0,
          radius: 50.0,
          color: Colors.red,
        ),
//      child: new Container(
//        padding: const EdgeInsets.all(5.0),
//        child: new CircleAvatar(
////          backgroundImage: new AssetImage("images/Young-Girl.png"),
//          backgroundImage: new NetworkImage("http://mhalabs.org/wp-content/uploads/upme/1451456913_brodie.jpg"),
//          backgroundColor: Colors.white,
//          radius: 50.0,
//        ),
//
////      child: new Image.asset("images/girl.jpg"),
//      decoration: new BoxDecoration(
//        color: Colors.grey,
//      shape: BoxShape.circle,
//      ),
//      ),
      ),
    );
  }
}
/**
 * 头像类
 */
class CircleImg extends StatelessWidget {
  const CircleImg(
      {Key key,
      @required this.image,
      @required this.color,
      @required this.padding,
      @required this.radius})
      : super(key: key);

  final ImageProvider image;
  final Color color;
  final double padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.all(this.padding),
      child: new CircleAvatar(
//          backgroundImage: new AssetImage("images/Young-Girl.png"),
        backgroundImage: this.image,
        backgroundColor: Colors.white,
        radius: this.radius,
      ),

//      child: new Image.asset("images/girl.jpg"),
      decoration: new BoxDecoration(
        color: this.color,
        shape: BoxShape.circle,
      ),
    );
  }
}
