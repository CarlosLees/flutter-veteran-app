import 'package:get/get.dart';
import 'package:veteran_setting/pages/car_list/binding.dart';
import 'package:veteran_setting/pages/car_list/view.dart';
import 'package:veteran_setting/pages/splash/view.dart';

import '../pages/splash/binding.dart';

class RouterGet {
  static const String launch = "/";
  static const String carList = "/car";

  static final List<GetPage> pages = [
    GetPage(name: launch, page: () => SplashPage(), binding: SplashBinding()),
    GetPage(name: carList, page: () => CarListPage(), binding: CarListBinding())
  ];
}