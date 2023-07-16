import 'package:flutter_mvvm_2023/generated/json/base/json_convert_content.dart';
import 'package:flutter_mvvm_2023/model/user_model_entity.dart';

UserModelEntity $UserModelEntityFromJson(Map<String, dynamic> json) {
	final UserModelEntity userModelEntity = UserModelEntity(token: null);
	final String? token = jsonConvert.convert<String>(json['token']);
	if (token != null) {
		userModelEntity.token = token;
	}
	return userModelEntity;
}

Map<String, dynamic> $UserModelEntityToJson(UserModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['token'] = entity.token;
	return data;
}