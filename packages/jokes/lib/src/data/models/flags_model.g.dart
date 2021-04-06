// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlagsModel _$FlagsModelFromJson(Map<String, dynamic> json) {
  return FlagsModel(
    explicit: json['explicit'] as bool?,
    nsfw: json['nsfw'] as bool?,
    political: json['political'] as bool?,
    racist: json['racist'] as bool?,
    religious: json['religious'] as bool?,
    sexist: json['sexist'] as bool?,
  );
}

Map<String, dynamic> _$FlagsModelToJson(FlagsModel instance) =>
    <String, dynamic>{
      'explicit': instance.explicit,
      'nsfw': instance.nsfw,
      'political': instance.political,
      'racist': instance.racist,
      'religious': instance.religious,
      'sexist': instance.sexist,
    };
