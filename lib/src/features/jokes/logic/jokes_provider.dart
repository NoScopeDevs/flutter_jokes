import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';

import 'package:network_manager/network_manager.dart';
import 'package:jokes/jokes.dart';

import '../../../core/env/environment_config.dart';

import 'jokes_state.dart';
export 'jokes_state.dart' show Initial, Loading, JokeAvailable, Error;

part 'jokes_state_notifier.dart';

// * Repository

final jokesRepositoryProvider = Provider<IJokesRepository>(
  (_) => JokesRepository(
    networkManager: NetworkManager(DataConnectionChecker()),
    remoteDataSource: DioDataSource(
      client: Dio(),
      url: '${EnvironmentConfig.apiUrl}/joke/Programming',
    ),
  ),
);

// * Use cases

final _getJokeProvider = Provider<GetJoke>(
  (ref) {
    final repository = ref.watch(jokesRepositoryProvider);
    return GetJoke(repository: repository);
  },
);

// * Logic holder / StateNotifier

final jokesNotifierProvider = StateNotifierProvider<JokesNotifier>(
  (ref) {
    // use cases
    final getJoke = ref.watch(_getJokeProvider);
    return JokesNotifier(getJoke: getJoke);
  },
);
