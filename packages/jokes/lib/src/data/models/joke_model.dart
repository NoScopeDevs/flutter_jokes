import 'package:jokes/src/data/models/flags_model.dart';
import 'package:jokes/src/domain/domain.dart' show Joke;
import 'package:json_annotation/json_annotation.dart';

part 'joke_model.g.dart';

@JsonSerializable()
class JokeModel implements Joke {
  JokeModel({
    required this.safe, this.category,
    this.delivery,
    this.flags,
    this.id,
    this.lang,
    this.setup,
    this.type,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);

  Map<String, dynamic> toJson() => _$JokeModelToJson(this);

  @override
  final String? category;

  @override
  final String? delivery;

  @override
  final FlagsModel? flags;

  @override
  final int? id;

  @override
  final String? lang;

  @override
  final bool safe;

  @override
  final String? setup;

  @override
  final String? type;

  @override
  List<Object?> get props => [
        category,
        delivery,
        flags,
        id,
        lang,
        safe,
        setup,
        type,
      ];

  @override
  bool get stringify => true;
}
