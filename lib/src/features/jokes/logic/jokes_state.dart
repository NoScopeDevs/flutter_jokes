import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jokes/jokes.dart';

part 'jokes_state.freezed.dart';

@freezed
abstract class JokesState with _$JokesState {
  /// Data is present state
  const factory JokesState({@required JokeModel joke}) = JokeAvailable;

  /// Initial/default state
  const factory JokesState.initial() = Initial;

  /// Data is loading state
  const factory JokesState.loading() = Loading;

  /// Error when loading data state
  const factory JokesState.error([String message]) = Error;
}
