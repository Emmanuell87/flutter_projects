import 'package:flutter/material.dart';
import 'package:tabs_widget/pages/home.dart';
import 'package:tabs_widget/pages/video.dart';
import 'package:tabs_widget/pages/contact.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.red),
        home: const MyTabs(title: "Video Tabs"));
  }
}

class MyTabs extends StatefulWidget {
  const MyTabs({super.key, required this.title});

  final String title;
  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.contacts)),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[Home(), Video(), Contact()],
        ));
  }
}
