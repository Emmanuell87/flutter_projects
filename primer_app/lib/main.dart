import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Mi Primera Aplicacion",
      home: Scaffold(
        appBar: AppBar(title: const Text("Mi Primera Aplicacion")),
        body: const Center(
          child: Text('Hello World 2'),
        ),
      )));
}
