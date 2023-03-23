import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Obx(() => Text('${controller.click.tap}', 
                style: const TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => controller.click.increment(),
                ),
                const SizedBox(width: 40,),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => controller.click.decrement(),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}