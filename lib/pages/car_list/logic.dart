import 'dart:io';

import 'package:get/get.dart';
import 'package:veteran_setting/api/base_api.dart';

import 'state.dart';

class CarListLogic extends GetxController {
  final CarListState state = CarListState();

  @override
  void onReady() {
    super.onReady();
    carList();
  }

  void carList() async {
    state.listData = await BaseApis.carList();
    state.isLoading.value = false;
    update();
  }
}
