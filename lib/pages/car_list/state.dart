import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veteran_setting/model/car_record_list_entity.dart';

class CarListState {
  CarRecordListEntity? listData = CarRecordListEntity();
  Rx<bool> isLoading = true.obs;
  Rx<Color> evenItemColor = const Color(0xffeeeeee).obs;
  Rx<Color> oddItemColor = Colors.white.obs;
  CarListState() {
    ///Initialize variables
  }
}
