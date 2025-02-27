import 'package:jokes/src/data/datasources/remote/remote_data_source.dart';
import 'package:jokes/src/domain/domain.dart' show IJokesRepository, Joke;

/// Jokes repository implementation
class JokesRepository implements IJokesRepository {
  /// Jokes repository constructor
  JokesRepository({
    required IRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final IRemoteDataSource _remoteDataSource;

  @override
  Future<Joke> getJoke() async {
    try {
      final joke = await _remoteDataSource.getJoke();
      return joke;
    } on Exception {
      rethrow;
    }
  }
}
