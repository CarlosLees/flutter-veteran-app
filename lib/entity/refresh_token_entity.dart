import 'dart:convert';

import '../generated/json/base/json_field.dart';
import '../generated/json/refresh_token_entity.g.dart';

@JsonSerializable()
class RefreshTokenEntity {
	 String? refreshToken;
	 String? token;

	RefreshTokenEntity();

	factory RefreshTokenEntity.fromJson(Map<String, dynamic> json) => $RefreshTokenEntityFromJson(json);

	Map<String, dynamic> toJson() => $RefreshTokenEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}