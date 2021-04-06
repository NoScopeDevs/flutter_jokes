import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jokes/jokes.dart';

part 'jokes_state.freezed.dart';

@freezed
abstract class JokesState with _$JokesState {
  /// Data is present state
  const factory JokesState.data({required Joke joke}) = _Data;

  /// Initial/default state
  const factory JokesState.initial() = _Initial;

  /// Data is loading state
  const factory JokesState.loading() = _Loading;

  /// Error when loading data state
  const factory JokesState.error([String? message]) = _Error;
}
