import 'package:jokes/jokes.dart';

import 'package:jokes/src/domain/domain.dart';

class GetJoke {
  GetJoke({
    required IJokesRepository repository,
  }) : _repository = repository;

  final IJokesRepository _repository;

  /// Callable class method
  Future<Joke> call() => _repository.getJoke();
}
