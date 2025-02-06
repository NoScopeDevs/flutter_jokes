import 'package:equatable/equatable.dart';

import 'package:jokes/src/domain/entities/flags.dart';

abstract class Joke extends Equatable {
  const Joke({
    required this.safe, this.category,
    this.type,
    this.setup,
    this.delivery,
    this.flags,
    this.id,
    this.lang,
  });

  final String? category;
  final String? type;
  final String? setup;
  final String? delivery;
  final Flags? flags;
  final int? id;
  final bool safe;
  final String? lang;
}
