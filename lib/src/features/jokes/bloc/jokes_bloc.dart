import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/jokes.dart';
import 'package:meta/meta.dart';

import 'jokes_state.dart';
part 'jokes_event.dart';

class JokesBloc extends Bloc<JokesEvent, JokesState> {
  JokesBloc({
    @required GetJoke getJoke,
  })  : assert(getJoke != null),
        _getJoke = getJoke,
        super(JokesState.initial());

  final GetJoke _getJoke;

  @override
  Stream<JokesState> mapEventToState(JokesEvent event) async* {
    if (event is GetJokeEvent) {
      yield* _mapGetJokeEventToState();
    }
  }

  Stream<JokesState> _mapGetJokeEventToState() async* {
    yield JokesState.loading();

    final result = await _getJoke();

    yield result.fold(
      (error) => Error(error.toString()),
      (joke) => JokeAvailable(joke: joke),
    );
  }
}
