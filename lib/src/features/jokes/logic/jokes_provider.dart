import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:network_manager/network_manager.dart';
import 'package:jokes/jokes.dart';

import '../../../core/env/environment_config.dart';

import 'jokes_state.dart';
export 'jokes_state.dart';

part 'jokes_state_notifier.dart';

/// Provider to use the JokesStateNotifier
// * Logic holder / StateNotifier
final jokesNotifierProvider = StateNotifierProvider<JokesNotifier, JokesState>(
  (ref) => JokesNotifier(getJoke: ref.watch(getJokeProvider)),
);

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

final getJokeProvider = Provider<GetJoke>(
  (ref) {
    final repository = ref.watch(jokesRepositoryProvider);
    return GetJoke(repository: repository);
  },
);
