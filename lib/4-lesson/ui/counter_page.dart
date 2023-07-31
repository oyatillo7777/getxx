import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxx/4-lesson/controller/counter_controller.dart';
import 'package:getxx/4-lesson/ui/firts_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Counter Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Obx(
              () => Text(
                controller.count.toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () => controller.increment(),
                    child: Text("increment")),
                TextButton(
                    onPressed: () => controller.decrement(),
                    child: Text("decrement")),
              ],
            ),
            IconButton(
                onPressed: () => Get.to(Firts()), icon: Icon(Icons.next_plan)),
            MaterialButton(
              onPressed: () {
                Get.snackbar("Xatolik", "Serverda");
              },
              child: Text("Naisb"),
            )
          ],
        ),
      ),
    );
  }
}
