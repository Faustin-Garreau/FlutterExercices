import 'package:flutter_project/widgets/exo4/getx_exo4_controller.dart';
import 'package:get/get.dart';

class GetxExo4Bindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetExo4Controller());
  }
}
