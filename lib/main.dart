import 'package:flutter/material.dart';
import 'UserInterface/Loader.dart';
//import 'Profile.dart';
//import 'MatchHistory.dart';

void main() => runApp(new MaterialApp( home: LoadingView()/*, debugShowCheckedModeBanner: false*/));


class LoadingView extends StatefulWidget {
  @override
  _LoadingView createState() => new _LoadingView();
}

class _LoadingView extends State<LoadingView> with SingleTickerProviderStateMixin{

  TabController _controller;
  @override
  void initState()
  {
    super.initState();
    _controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: new Stack(
        children: <Widget>[
          new Image.asset("images/im_bg.jpg",fit: BoxFit.fitHeight),
          new Center(
            child: new Loader(),
          ),
        ],
      ),

    );
  }

}