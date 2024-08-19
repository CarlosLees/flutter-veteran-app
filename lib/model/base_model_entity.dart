import 'package:veteran_setting/generated/json/base/json_field.dart';
import 'package:veteran_setting/generated/json/base_model_entity.g.dart';
import 'dart:convert';
export 'package:veteran_setting/generated/json/base_model_entity.g.dart';

@JsonSerializable()
class BaseModelEntity {
	int? errno;
	String? errmsg;
	dynamic data;

	BaseModelEntity();

	factory BaseModelEntity.fromJson(Map<String, dynamic> json) => $BaseModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $BaseModelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}