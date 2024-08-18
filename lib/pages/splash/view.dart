import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veteran_setting/routers/routers.dart';

import 'logic.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final logic = Get.find<SplashLogic>();
  final state = Get.find<SplashLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
              child: Ink(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(colors: [Colors.orange, Colors.deepOrange, Colors.orangeAccent])
                ),
                child: InkWell(
                  onTap: () {
                    Get.offAndToNamed(RouterGet.launch);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("派车列表", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
