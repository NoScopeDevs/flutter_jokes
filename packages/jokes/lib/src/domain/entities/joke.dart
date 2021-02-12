import 'package:equatable/equatable.dart';

import 'flags.dart';

abstract class Joke extends Equatable {
  Joke({
    this.category,
    this.type,
    this.setup,
    this.delivery,
    this.flags,
    this.id,
    this.safe,
    this.lang,
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
