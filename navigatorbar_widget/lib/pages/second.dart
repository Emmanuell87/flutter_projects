import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.watch_later, size: 160.0, color: Colors.white),
              Text('Segundo Tab', style: TextStyle(color: Colors.white))
            ],
          ),
        ));
  }
}
