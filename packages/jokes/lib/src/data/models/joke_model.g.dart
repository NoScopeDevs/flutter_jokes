// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeModel _$JokeModelFromJson(Map<String, dynamic> json) {
  return JokeModel(
    category: json['category'] as String?,
    delivery: json['delivery'] as String?,
    flags: json['flags'] == null
        ? null
        : FlagsModel.fromJson(json['flags'] as Map<String, dynamic>),
    id: json['id'] as int?,
    lang: json['lang'] as String?,
    safe: json['safe'] as bool?,
    setup: json['setup'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$JokeModelToJson(JokeModel instance) => <String, dynamic>{
      'category': instance.category,
      'delivery': instance.delivery,
      'flags': instance.flags,
      'id': instance.id,
      'lang': instance.lang,
      'safe': instance.safe,
      'setup': instance.setup,
      'type': instance.type,
    };
