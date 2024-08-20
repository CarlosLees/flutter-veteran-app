import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:veteran_setting/components/button.dart';
import 'package:veteran_setting/components/shimmer.dart';
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
                    return state.isLoading.value ?
                    const ListViewShimmer()
                        : ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.listData?.list?.length,
                        itemBuilder: (context, index) {
                          final itemColor = index.isEven
                              ? state.evenItemColor.value
                              : state.oddItemColor.value;
                          return _listItem(
                              state.listData?.list?[index], itemColor);
                        });
                  },
                ),
              ),
              Button(onButtonPress: () => Get.offAndToNamed(RouterGet.launch))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listItem(CarRecordListList? item, Color color) {
  return Container(
      height: 50,
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