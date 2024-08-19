import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veteran_setting/model/car_record_list_entity.dart';
import 'package:veteran_setting/routers/routers.dart';

import 'logic.dart';

class CarListPage extends StatelessWidget {
  CarListPage({Key? key}) : super(key: key);

  final logic = Get.find<CarListLogic>();
  final state = Get.find<CarListLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("派车列表"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 500,
                child: GetBuilder<CarListLogic>(
                  builder: (build) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: logic.state.listData?.list?.length,
                        itemBuilder: (context, index) {
                          final itemColor = index.isEven
                              ? logic.state.evenItemColor.value
                              : logic.state.oddItemColor.value;
                          return _listItem(
                              logic.state.listData!.list?[index], itemColor);
                        });
                  },
                ),
              ),
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
                        child: const Text("返回", style: TextStyle(
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
      ),
    );
  }
}

Widget _listItem(CarRecordListList? item, Color color) {
  return Container(
      height: 56,
      color: color,
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "${item?.veteranName}",
                style: const TextStyle(fontSize: 16, color: Color(0xff333333)),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                "",
                style: TextStyle(fontSize: 16, color: Color(0xff333333)),
              ),
            ),
          )
        ],
      ),
    );
}