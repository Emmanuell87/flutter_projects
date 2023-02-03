import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.alarm, size: 160.0, color: Colors.white),
              Text('Primer Tab', style: TextStyle(color: Colors.white))
            ],
          ),
        ));
  }
}
