import 'package:veteran_setting/generated/json/base/json_convert_content.dart';
import 'package:veteran_setting/model/base_model_entity.dart';

BaseModelEntity $BaseModelEntityFromJson(Map<String, dynamic> json) {
  final BaseModelEntity baseModelEntity = BaseModelEntity();
  final int? errno = jsonConvert.convert<int>(json['errno']);
  if (errno != null) {
    baseModelEntity.errno = errno;
  }
  final String? errmsg = jsonConvert.convert<String>(json['errmsg']);
  if (errmsg != null) {
    baseModelEntity.errmsg = errmsg;
  }
  final dynamic data = json['data'];
  if (data != null) {
    baseModelEntity.data = data;
  }
  return baseModelEntity;
}

Map<String, dynamic> $BaseModelEntityToJson(BaseModelEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['errno'] = entity.errno;
  data['errmsg'] = entity.errmsg;
  data['data'] = entity.data;
  return data;
}

extension BaseModelEntityExtension on BaseModelEntity {
  BaseModelEntity copyWith({
    int? errno,
    String? errmsg,
    dynamic data,
  }) {
    return BaseModelEntity()
      ..errno = errno ?? this.errno
      ..errmsg = errmsg ?? this.errmsg
      ..data = data ?? this.data;
  }
}