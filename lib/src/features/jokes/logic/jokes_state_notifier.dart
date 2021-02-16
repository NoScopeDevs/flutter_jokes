part of 'jokes_provider.dart';

/// Defines all the Jokes logic the app will use
class JokesNotifier extends StateNotifier<JokesState> {
  /// Base constructor expects a [ProviderReference] to
  /// read its usecases and also defines inital state
  JokesNotifier(ProviderReference ref) : super(JokesState.initial());

  void reset() => state = Initial();
}
