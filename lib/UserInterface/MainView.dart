import 'package:flutter/material.dart';


class MainView extends StatefulWidget {
  @override
  _MainView createState() => new _MainView();
}

class _MainView extends State<MainView> with SingleTickerProviderStateMixin{

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
      appBar: new AppBar(
        title: new Text("PUBG Rank"),
        bottom: new TabBar(
          controller: _controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.people)),
            new Tab(icon: new Icon(Icons.history))
          ],
        )
      ),
      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          // new Profile(),
          // new MatchHistory()
        ],
      ),

    );
  }

}