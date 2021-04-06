import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:jokes/jokes.dart';

import '../domain.dart';
import '../repositories/ijokes_repository.dart';

class GetJoke {
  GetJoke({
    required IJokesRepository repository,
  }) : _repository = repository;

  final IJokesRepository _repository;

  /// Callable class method
  Future<Either<Failure, Joke>> call() async => await _repository.getJoke();
}
