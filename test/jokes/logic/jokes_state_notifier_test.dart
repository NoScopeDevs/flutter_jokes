import 'package:flutter_test/flutter_test.dart';
import 'package:jokes/jokes.dart';
import 'package:mocktail/mocktail.dart';

import '../../../lib/src/features/jokes/logic/jokes_provider.dart'
    show JokesNotifier, JokesState;

class GetJokeMock extends Mock implements GetJoke {}

void main() {
  group('JokesNotifier', () {
    late GetJokeMock _getJoke;

    setUp(() {
      _getJoke = GetJokeMock();
    });

    test('Emit Initial, Loading, Data when successful', () async {
      final joke = JokeModel(
        category: 'Programing',
        type: 'twopart',
        setup: 'How do you generate a random string?',
        delivery: 'Put a Windows user in front of Vim and tell him to exit.',
        id: 10,
        safe: true,
        lang: 'en',
      );

      final tJokeStates = <JokesState>[
        JokesState.initial(),
        JokesState.loading(),
        JokesState.data(joke: joke)
      ];

      when(() => _getJoke()).thenAnswer((_) => Future.value(joke));

      final _jokesNotifier = JokesNotifier(getJoke: _getJoke);

      final List<JokesState> jokesStates = [];
      _jokesNotifier.addListener((state) {
        jokesStates.add(state);
      });

      ///Act
      await _jokesNotifier.getJoke();

      ///Expect
      expect(jokesStates, tJokeStates);
    });

    test('Emit Initial, Loading, Error when Error Occurs', () async {
      //Setup

      final tJokeStates = <JokesState>[
        JokesState.initial(),
        JokesState.loading(),
        JokesState.error(Exception().toString()),
      ];

      when(() => _getJoke()).thenThrow(Exception());

      final _jokesNotifier = JokesNotifier(getJoke: _getJoke);

      final List<JokesState> jokesStates = [];
      _jokesNotifier.addListener((state) {
        jokesStates.add(state);
      });

      ///Act
      await _jokesNotifier.getJoke();

      ///Expect
      expect(jokesStates, tJokeStates);
    });
  });
}
