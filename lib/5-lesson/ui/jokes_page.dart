import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxx/5-lesson/controller/jokes_controller.dart';
import 'package:getxx/5-lesson/service/api_service.dart';

import '../data/model/Joke.dart';

class Jokes_Page extends StatefulWidget {
  const Jokes_Page({Key? key}) : super(key: key);

  @override
  State<Jokes_Page> createState() => _Jokes_PageState();
}

class _Jokes_PageState extends State<Jokes_Page> {
  JokesController jokesController = Get.put(JokesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokes Page"),
      ),
      body: Obx(() {
        print(jokesController.jokes);
        if (jokesController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
              itemCount: jokesController.jokes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                    title: Text(jokesController.jokes[index].body.toString()),
                  ));
        }
      }),
    );
  }
}
