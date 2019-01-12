import 'package:flutter/material.dart';

class MatchHistory extends StatefulWidget {
  MatchHistory({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MatchHistory createState() => _MatchHistory();
}

class _MatchHistory extends State<MatchHistory> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("MatchHistory's SOMETHING"),
          ),
        body: new ListView.builder(itemBuilder: (context, index){
            return _buildRowLstHistory(index);
          })
      );
  }

  Widget _buildRowLstHistory(int idx)
  {
    return new Column(
      children: <Widget>[

      ],
    );
  }
}