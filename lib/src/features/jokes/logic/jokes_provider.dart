import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network_manager/network_manager.dart';

import 'package:jokes/jokes.dart';

import '../../../core/env/environment_config.dart';

import 'jokes_state.dart';
export 'jokes_state.dart';

part 'jokes_state_notifier.dart';

/// Provider to use the JokesStateNotifier
final jokesNotifierProvider = StateNotifierProvider<JokesNotifier, JokesState>(
  (ref) => JokesNotifier(getJoke: ref.watch(getJokeProvider)),
);

/// Repositories Providers
final repositoryProvider = Provider<IJokesRepository>(
  (ref) {
    final apiUrl = EnvironmentConfig.apiUrl;

    return JokesRepository(
      networkManager: NetworkManager(DataConnectionChecker()),
      remoteDataSource: DioDataSource(
        client: Dio(),
        url: '$apiUrl/joke/Programming,Pun',
      ),
    );
  },
);

/// Use Cases Providers
final getJokeProvider = Provider<GetJoke>(
  (ref) {
    final repository = ref.watch(repositoryProvider);
    return GetJoke(repository: repository);
  },
);
