import 'package:flutter/material.dart';
import 'package:shenzhen/ui/Badge.dart';
import 'package:shenzhen/ui/Banner.dart';
import 'package:shenzhen/ui/Carousel.dart';
import 'package:shenzhen/ui/CircleImage.dart';
import 'package:shenzhen/ui/GridUi.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '深圳',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
//      home: new MyHomePage(title: '深圳'),
//    home: new Banners(),
//    home: new GridUi(),
//    home: new Badge(),
//    home: new CircleImage(),
    home: new Carousel(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _showFirst = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      backgroundColor: Colors.grey,
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
//      body: new Container(
//        margin: new EdgeInsets.all(115.0),
//        child: new CircleAvatar(
//          child: new Text("test"),
//          radius: 60.0,
//          backgroundColor: Colors.blue,
//        ),
//        foregroundDecoration: new BoxDecoration(
//          color: Colors.white,
//          shape: BoxShape.circle,
//        ),
//        alignment: FractionalOffset.center,
//        foregroundDecoration: ,

//      ),
//      body: new Center(
//
//        child: new Column(
//
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new CircleAvatar(
//              child: new Text("Asdf"),
//              radius: 60.0,
//              backgroundColor: Colors.blue,
//            ),
//            new Text(
//              'You have pushed the button this many times:',
//            ),
//            new Text(
//              '${_counter}',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
      body: new Container(
        child: new Center(
            child: new Stack(
          children: <Widget>[
            new Banner(
              location: BannerLocation.topLeft,
              message: "Test",
              color: Colors.yellow,
            ),
            new AnimatedCrossFade(
              firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100.0,
              ),
              secondChild: const FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 100.0,
              ),
              crossFadeState: _showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ],
        ),
        ),

//          child: new AnimatedCrossFade(
//            firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0,),
//            secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0,),
//            crossFadeState: _showFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
//            duration: const Duration(seconds: 1),
//          ),
//            ),
        decoration: new BoxDecoration(
          //线性颜色
//          gradient: new LinearGradient(
//            begin: FractionalOffset.topRight,
//            end: FractionalOffset.bottomLeft,
//            colors: <Color>[
//              Colors.red.shade900,
//              Colors.red.shade100,
//            ]
//          )

          gradient: new RadialGradient(
            colors: <Color>[
              Colors.red,
//            Colors.grey,
//            Colors.green,
//            Colors.orange,
              Colors.purple
            ],
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
//      floatingActionButton: new FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: new Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
