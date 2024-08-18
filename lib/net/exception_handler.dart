import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routers/routers.dart';
import '../utils/logger.dart';
import 'exception.dart';

handleException(ApiException exception) {
  logger.e(
      "ERROR_LOG: ${exception.runtimeType}(${exception.code}: ${exception.message})");
  Fluttertoast.showToast(
      msg: "${exception.message}",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 16.0);

  if (exception.code == 412 || exception.code == 416) {
    Get.offNamed(RouterGet.launch);
    return true;
  }
  // EasyLoading.showError(exception.message ?? ApiException.unknownException);
}
