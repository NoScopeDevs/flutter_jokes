part of 'jokes_provider.dart';

/// Defines all the Jokes logic the app will use
class JokesNotifier extends StateNotifier<JokesState> {
  /// Base constructor expects a [ProviderReference] to
  /// read its usecases and also defines inital state
  JokesNotifier({required GetJoke getJoke, JokesState? initialState})
      : _getJoke = getJoke,
        super(initialState ?? JokesState.initial());

  final GetJoke _getJoke;

  void reset() => state = JokesState.initial();

  Future<void> getJoke() async {
    state = JokesState.loading();

    try {
      final result = await _getJoke();
      state = JokesState.data(joke: result);
    } catch (e) {
      state = JokesState.error(e.toString());
    }
  }
}
