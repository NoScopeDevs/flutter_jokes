import 'package:equatable/equatable.dart';

abstract class Flags extends Equatable {
  Flags({
    required this.nsfw,
    required this.religious,
    required this.political,
    required this.racist,
    required this.sexist,
    required this.explicit,
  });

  final bool nsfw;
  final bool religious;
  final bool political;
  final bool racist;
  final bool sexist;
  final bool explicit;
}
