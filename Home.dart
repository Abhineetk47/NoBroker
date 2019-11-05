import 'package:flutter/material.dart';
class Nav extends StatefulWidget{
  @override
    Compose createState() => new Compose();
}
class Compose extends State<Nav> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController controller;
  @override
  void initState(){
      super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // #docregion addListener
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
        // #docregion addListener
      });
    // #enddocregion addListener
    controller.forward();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
          backgroundColor: Colors.red,
          
          title: Padding( padding: EdgeInsets.only(left: 8),child: Text("Unread")),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              },
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: animation.value,
            width: animation.value,
            child: Text("animation"),
          ),
        ),
        );

  }
}
