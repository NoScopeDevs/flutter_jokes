import '../../../domain/domain.dart' show Joke;

abstract class IRemoteDataSource {
  Future<Joke> getJoke();
}
