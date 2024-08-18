import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CarListPage extends StatelessWidget {
  CarListPage({Key? key}) : super(key: key);

  final logic = Get.find<CarListLogic>();
  final state = Get.find<CarListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
