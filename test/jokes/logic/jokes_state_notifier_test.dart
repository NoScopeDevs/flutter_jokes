import 'dart:async';

import 'package:flutter_jokes/src/features/jokes/logic/jokes_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'package:errors/errors.dart';
import 'package:jokes/jokes.dart';

import '../../../lib/src/features/jokes/logic/jokes_provider.dart'
    show JokesNotifier;

void main() {
  test('test state of state notifier', () async {
    //Setup
    final _getJoke = GetJokeMock();

    final joke = JokeModel(
      category: 'Programing',
      type: 'twopart',
      setup: 'How do you generate a random string?',
      delivery: 'Put a Windows user in front of Vim and tell him to exit.',
      id: 10,
      safe: true,
      lang: 'en',
    );

    final tJokeStates = <String>[
      JokesState.initial().toString(),
      JokesState.loading().toString(),
      JokesState(joke: joke).toString()
    ];

    when(_getJoke.call()).thenAnswer(
      (_) => Future.value(
        Right<Failure, JokeModel>(joke),
      ),
    );

    final _jokesNotifier = JokesNotifier(_getJoke);

    final List<String> jokesStates = [];
    _jokesNotifier.addListener((state) {
      jokesStates.add(state.toString());
    });

    ///Act
    await _jokesNotifier.getJoke();

    ///Expect
    expect(jokesStates, tJokeStates);
  });
}

class GetJokeMock extends Mock implements GetJoke {}
