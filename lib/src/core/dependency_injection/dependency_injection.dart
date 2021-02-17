import 'package:dio/dio.dart';
import 'package:flutter_jokes/src/features/jokes/bloc/jokes_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:jokes/jokes.dart';
import 'package:network_manager/network_manager.dart';

import '../env/environment_config.dart';

final getIt = GetIt.instance;

void setUp() {
  /// * Repository
  getIt.registerLazySingleton<IJokesRepository>(
    () => JokesRepository(
      networkManager: NetworkManager(DataConnectionChecker()),
      remoteDataSource: DioDataSource(
        client: Dio(),
        url: '${EnvironmentConfig.apiUrl}/joke/Programming',
      ),
    ),
  );

  //* Use Cases
  getIt.registerLazySingleton<GetJoke>(() {
    final repository = getIt<IJokesRepository>();
    return GetJoke(repository: repository);
  });

  //* Bloc

  getIt.registerLazySingleton<JokesBloc>(
    () => JokesBloc(
      getJoke: getIt<GetJoke>(),
    ),
  );
}
