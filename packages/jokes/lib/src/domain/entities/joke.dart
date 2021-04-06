import 'package:equatable/equatable.dart';

import 'flags.dart';

abstract class Joke extends Equatable {
  Joke({
    required this.category,
    required this.type,
    required this.setup,
    required this.delivery,
    required this.flags,
    required this.id,
    required this.safe,
    required this.lang,
  });

  final String category;
  final String type;
  final String setup;
  final String delivery;
  final Flags flags;
  final int id;
  final bool safe;
  final String lang;
}
