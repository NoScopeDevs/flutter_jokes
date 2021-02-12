import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../entities/joke.dart';

/// Repository interface for jokes
abstract class IJokesRepository {
  Future<Either<Failure, Joke>> getJoke();
}
