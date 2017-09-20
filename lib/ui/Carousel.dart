import 'package:flutter/material.dart';

/**
 * 轮播图片
 */
class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => new _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new DefaultTabController(
          length: 3,
          child: new _PageSelector(),
        ),
        height: 200.00,
      )
    );
  }
}

class _PageSelector extends StatelessWidget {
//  const _PageSelector(this.icons);
//  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
    final Color color = Theme.of(context).accentColor;
    final List<String> _list = ["A", "B", "C"];

    return new Stack(
      alignment: FractionalOffset.bottomCenter,
      children: <Widget>[
        new TabBarView(
          controller: controller,
        children: <Widget>[
          new Container(color: Colors.red,),
          new Container(color: Colors.blue,),
          new Container(color: Colors.orange,),


//          new Center(child: const Text("A"),),
//          new Center(child: const Text("B"),),
//          new Center(child: const Text("C"),),
          ],
        ),
        new TabPageSelector(
          controller: controller,
        selectedColor: Colors.white,
        ),
//        new TabBarView(
//          children: _list.map((s){
//            return new Text(s);
//          }).toList(),
//        controller: controller,
//        )
      ],
    );
  }

  void _handleArrowButtonPress(BuildContext context, int delta) {
    final TabController controller = DefaultTabController.of(context);
    if (!controller.indexIsChanging)
      controller.animateTo((controller.index + delta).clamp(0, 2));
  }
}
