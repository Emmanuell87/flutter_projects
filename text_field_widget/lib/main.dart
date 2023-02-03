import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputValue = "";

  final TextEditingController controller = TextEditingController();

  void onSubmitted(String value) {
    setState(() {
      inputValue = '$inputValue\n$value';
      controller.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('EditText'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(children: [
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Ingrese el texto aquí..."),
                  onSubmitted: (String value) {
                    onSubmitted(value);
                  },
                  controller: controller,
                ),
                Text(inputValue)
              ]),
            )));
  }
}
