import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:network_manager/network_manager.dart';

import '../../domain/domain.dart' show Joke, IJokesRepository;

import '../datasources/remote/remote_data_source.dart';

/// Jokes repository implementation
class JokesRepository implements IJokesRepository {
  /// Jokes repository constructor
  JokesRepository({
    required INetworkManager networkManager,
    required IRemoteDataSource remoteDataSource,
  })   : _networkManager = networkManager,
        _remoteDataSource = remoteDataSource;

  final INetworkManager _networkManager;
  final IRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Joke>> getJoke() async {
    if (await _networkManager.isConnected) {
      try {
        final joke = await _remoteDataSource.getJoke();
        return Right(joke);
      } on ServerException {
        return Left(ServerFailure());
      } catch (_) {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
