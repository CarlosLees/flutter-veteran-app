import 'package:veteran_setting/model/base_model_entity.dart';
import 'package:veteran_setting/model/car_record_list_entity.dart';
import 'package:veteran_setting/utils/api_manager.dart';

class BaseApis{
  static Future<CarRecordListEntity> carList() async {
    Map<String, dynamic> params = {
      "page":1,
      "limit":5,
      "courtyard":25
    };
    BaseModelEntity entity = await ApiManager.get(url: "https://console.sdhis999.com/wx/new_carRecord/carRecordList", params: params);
    return CarRecordListEntity.fromJson(entity.data);
  }
}