import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Demo Stepper',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  List<Step> mySteps = const [
    Step(
      title: Text("Paso 1"),
      content: Text("Aprender Flutter"),
    ),
    Step(
      title: Text("Paso 2"),
      content: Text("Desarrollar App"),
    ),
    Step(
      title: Text("Paso 3"),
      content: Text("Publicar App"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Stepper'),
      ),
      body: Center(
        child: Stepper(
          currentStep: _currentStep,
          steps: mySteps,
          type: StepperType.horizontal,
          onStepContinue: () {
            setState(() {
              _currentStep = _currentStep < mySteps.length - 1
                  ? _currentStep + 1
                  : _currentStep;
            });
          },
          onStepCancel: () {
            setState(() {
              _currentStep = _currentStep > 0 ? _currentStep - 1 : _currentStep;
            });
          },
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
        ),
      ),
    );
  }
}
