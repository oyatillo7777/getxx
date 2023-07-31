import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxx/4-lesson/ui/SecondPage.dart';

class Firts extends StatelessWidget {
  const Firts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1")),
      floatingActionButton:
          FloatingActionButton(onPressed: () => Get.off(SecondPage())),
    );
  }
}
