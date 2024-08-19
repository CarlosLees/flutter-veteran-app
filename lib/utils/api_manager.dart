import 'package:dio/dio.dart';
import 'package:veteran_setting/model/base_model_entity.dart';
import 'http_manager.dart';

class ApiManager{
  static Future<BaseModelEntity> post({
    required String url,
    params,
  }) async{
    Response response = await HttpManager().post(api: url, params: params);
    BaseModelEntity result = BaseModelEntity.fromJson(response.data);
    return result;
  }

  static Future<BaseModelEntity> get({
    required String url,
    params,
  }) async{
    Response response = await HttpManager().get(api: url, params: params);
    BaseModelEntity result = BaseModelEntity.fromJson(response.data);
    return result;
  }
}
