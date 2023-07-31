import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '4-lesson/ui/counter_page.dart';
import '5-lesson/ui/jokes_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Get X Stete Managment",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Jokes_Page(),
    );
  }
}
