import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyDialog()));
}

class MyDialog extends StatefulWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String _inputText = "";

  void _showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
      ],
    );

    showDialog(context: context, builder: (BuildContext context) => dialog);
  }

  void _onChanged(String value) {
    _inputText = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo Alert Dialog")),
      body: Center(
          child: Column(children: [
        TextField(
          decoration: const InputDecoration(hintText: "Ingrese el texto"),
          onChanged: (String value) {
            _onChanged(value);
          },
        ),
        ElevatedButton(
            onPressed: () {
              _showAlert(_inputText);
            },
            child: const Text("Ver Alerta"))
      ])),
    );
  }
}
