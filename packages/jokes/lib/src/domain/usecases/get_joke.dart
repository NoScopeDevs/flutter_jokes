import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:meta/meta.dart';

import '../repositories/ijokes_repository.dart';

class GetJoke {
  GetJoke({
    @required IJokesRepository repository,
  })  : assert(repository != null),
        _repository = repository;

  final IJokesRepository _repository;

  /// Callable class method
  Future<Either<Failure, Object>> call() async => await _repository.getJoke();
}
