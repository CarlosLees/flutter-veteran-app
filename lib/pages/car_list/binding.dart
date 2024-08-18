import 'package:get/get.dart';

import 'logic.dart';

class CarListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarListLogic());
  }
}
