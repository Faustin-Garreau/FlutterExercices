import 'package:get/get.dart';

class GetExo4Controller extends GetxController {
  GetExo4Controller();
  Rx<int> count = 0.obs;

  RxList<String> wordList = ["mot1", "mot2", "mot3"].obs;

  void addWordToList() {
    wordList.add('worddd');
  }

  void incremementCounter() {
    count.value++;
  }
}
