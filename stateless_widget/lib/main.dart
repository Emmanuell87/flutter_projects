import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 40.0;
    const TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Widget"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            MyCard(
                title: Text(
                  "I Love Flutter",
                  style: textStyle,
                ),
                icon: Icon(
                  Icons.favorite,
                  size: iconSize,
                  color: Colors.redAccent,
                )),
            MyCard(
                title: Text("I Like this video", style: textStyle),
                icon: Icon(Icons.thumb_up,
                    size: iconSize, color: Colors.blueAccent)),
            MyCard(
                title: Text("Next video", style: textStyle),
                icon: Icon(Icons.queue_play_next,
                    size: iconSize, color: Colors.brown)),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title; // from , to ;
  final Widget icon; // from , to ;

  const MyCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [title, icon],
          ),
        ),
      ),
    );
  }
}
