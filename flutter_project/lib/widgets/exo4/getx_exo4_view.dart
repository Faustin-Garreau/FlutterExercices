import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/widgets/exo4/getx_exo4_controller.dart';
import 'package:get/get.dart';

class GetExo4View extends GetView<GetExo4Controller> {
  const GetExo4View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incremementCounter();
        controller.addWordToList();
      }),
      body: Center(
        child: Column(children: [
          Obx(() =>
              Text("Nombre de fois que j'ai cliqué ${controller.count.value}")),
          Obx(() => Row(
                children: List.generate(controller.wordList.length, (index) {
                  return Text("${controller.wordList[index]}, ");
                }),
              ))
        ]),
      ),
    );
  }
}
