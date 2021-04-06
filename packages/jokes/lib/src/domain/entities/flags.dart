import 'package:equatable/equatable.dart';

abstract class Flags extends Equatable {
  Flags({
    this.nsfw,
    this.religious,
    this.political,
    this.racist,
    this.sexist,
    this.explicit,
  });

  final bool? nsfw;
  final bool? religious;
  final bool? political;
  final bool? racist;
  final bool? sexist;
  final bool? explicit;
}
