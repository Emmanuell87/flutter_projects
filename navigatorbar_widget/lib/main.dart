import 'package:flutter/material.dart';
import 'package:navigatorbar_widget/pages/first.dart';
import 'package:navigatorbar_widget/pages/second.dart';
import 'package:navigatorbar_widget/pages/third.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyNavigator(
          title: 'Demo Bottom Navigator Bar',
        ));
  }
}

class MyNavigator extends StatefulWidget {
  const MyNavigator({super.key, required this.title});

  final String title;
  @override
  State<MyNavigator> createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    FirstTab(),
    SecondTab(),
    ThirdTab()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.watch_later), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplanemode_active), label: ''),
        ],
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
