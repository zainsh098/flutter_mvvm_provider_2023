import 'package:flutter_mvvm_2023/generated/json/base/json_field.dart';
import 'package:flutter_mvvm_2023/generated/json/user_model_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserModelEntity {
	String? token;

	UserModelEntity({this.token});


	factory UserModelEntity.fromJson(Map<String, dynamic> json) => $UserModelEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserModelEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}