// IDC
// ignore_for_file: one_member_abstracts

import 'package:jokes/src/domain/entities/joke.dart';

/// Repository interface for jokes
abstract class IJokesRepository {
  Future<Joke> getJoke();
}
