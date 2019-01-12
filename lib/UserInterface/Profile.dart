import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Profile's SOMETHING"),
          ),
        body: new ListView.builder(itemBuilder: (context, index){
            return _buildRowLstStats(index);
          })
      );
  }

  Widget _buildRowLstStats(int idx)
  {
    return new Column(
      children: <Widget>[
        
      ],
    );
  }
}