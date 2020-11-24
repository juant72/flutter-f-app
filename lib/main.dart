import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double textSize = 40.0;
    final TextStyle textStyle = new TextStyle(color: Colors.grey, fontSize: 30);
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateless Widget")),
      body: new Container(
        child: new Center(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                title: new Text(
                  "I love flutter",
                  style: textStyle,
                ),
                icon: new Icon(Icons.favorite,
                    size: textSize, color: Colors.blueAccent)),
            new MyCard(
                title: new Text("I love this video", style: textStyle),
                icon: new Icon(Icons.thumb_up,
                    size: textSize, color: Colors.redAccent)),
            new MyCard(
                title: new Text(
                  "Next video",
                  style: textStyle,
                ),
                icon: new Icon(
                  Icons.queue_play_next,
                  size: textSize,
                  color: Colors.greenAccent,
                ))
          ],
        )),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
          child: new Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: <Widget>[this.title, this.icon]),
      )),
    );
  }
}
