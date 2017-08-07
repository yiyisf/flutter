import 'package:flutter/material.dart';

class GridUi extends StatefulWidget {
  @override
  _GridUiState createState() => new _GridUiState();
}

class _GridUiState extends State<GridUi> {

  List<String> _listItem = [
    "AA",
    "AA",
    "BB",
    "BB",
    "CC",
    "CC",
    "DD",
    "EE",
    "EE",
    "FF",
    "FF",
    "GG",
    "GG",
    ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      persistentFooterButtons: <Widget>[
//        const Text("我"),
//        const Text("你"),
//        ],
      body: new Container(
//        alignment: FractionalOffset.center,
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new GridTileBar(
            title: const Text("TITLE"),
            subtitle: const Text("SUB title"),
          ),
          new Expanded(
            child: new GridView.count(
              primary: false,
            crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            children: _listItem.map((item){
                return new InkWell(child: new Center(child: new Text(item),));
            }).toList(),
//            children: <Widget>[
//
////              new InkResponse(child: new Center(child: const Text("AA"),),onTap: (){}, splashColor: Colors.orange,),
////              new InkWell(child: new Center(child: const Text("BB"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("CC"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("DD"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("EE"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("FF"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("GG"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("AA"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("BB"),),onTap: (){},),
////              new InkWell(child: new Center(child: const Text("CC"),),onTap: (){},),
//
////              new Center(child: const Text("AA")),
////              new Center(child: const Text("BB"),),
////              new Center(child: const Text("CC"),),
////              new Center(child: const Text("DD"),),
////              new Center(child: const Text("EE"),),
////              new Center(child: const Text("FF"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
////              new Center(child: const Text("GG"),),
//              ],
            ),
          ),
          ],
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
