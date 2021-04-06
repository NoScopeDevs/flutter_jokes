part of 'jokes_provider.dart';

/// Defines all the Jokes logic the app will use
class JokesNotifier extends StateNotifier<JokesState> {
  /// Base constructor expects a [ProviderReference] to
  /// read its usecases and also defines inital state
  JokesNotifier(GetJoke getJoke)
      : _getJoke = getJoke,
        super(JokesState.initial());

  final GetJoke _getJoke;

  void reset() => state = JokesState.initial();

  Future<void> getJoke() async {
    state = JokesState.loading();

    final result = await _getJoke();

    result.fold(
      (error) => state = JokesState.error(error.toString()),
      (joke) => state = JokesState.data(joke: joke),
    );
  }
}
