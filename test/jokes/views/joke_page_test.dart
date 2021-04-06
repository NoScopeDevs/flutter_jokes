import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:errors/errors.dart';
import 'package:jokes/jokes.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_jokes/src/app.dart';
import 'package:flutter_jokes/src/features/jokes/logic/jokes_provider.dart';
import 'package:flutter_jokes/src/features/jokes/views/joke_page.dart';
import 'package:flutter_jokes/src/features/jokes/views/joke_page.i18n.dart';

class MockGetJoke extends Mock implements GetJoke {}

void main() {
  final getJokeButton = find.byKey(getJokeButtonKey);
  final getLoadingIndicator = find.byKey(loadingIndicatorKey);

  group('JokesPage', () {
    testWidgets('Render default get joke message', (tester) async {
      // Setup
      await tester.pumpWidget(ProviderScope(child: JokesApp()));
      //Expect
      expect(find.text('${kTellJokeMessage.i18n}'), findsWidgets);
    });

    testWidgets('Loading Indicator when LoadingState', (tester) async {
      ///act
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            jokesNotifierProvider.overrideWithProvider(
                StateNotifierProvider<JokesNotifier, JokesState>(
              (_) => JokesNotifier(
                getJoke: MockGetJoke(),
                initialState: JokesState.loading(),
              ),
            ))
          ],
          child: JokesApp(),
        ),
      );

      //Validate initial state
      expect(getLoadingIndicator, findsWidgets);
    });

    testWidgets('Press button to get a joke', (tester) async {
      //Setup
      MockGetJoke _getJoke = MockGetJoke();

      final joke = JokeModel(
        category: 'Programing',
        type: 'twopart',
        setup: 'How do you generate a random string?',
        delivery: 'Put a Windows user in front of Vim and tell him to exit.',
        id: 10,
        safe: true,
        lang: 'en',
      );

      when(() => _getJoke()).thenAnswer(
        (_) => Future.value(
          Right<Failure, Joke>(joke),
        ),
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            getJokeProvider.overrideWithProvider(
              Provider((ref) => _getJoke),
            )
          ],
          child: JokesApp(),
        ),
      );

      //Validate initial state
      expect(find.text('${kTellJokeMessage.i18n}'), findsWidgets);
      expect(getJokeButton, findsWidgets);

      ///Act
      await tester.tap(getJokeButton);
      await tester.pump();

      ///Validate new joke
      expect(find.text('${kTellJokeMessage.i18n}'), findsNothing);
      expect(find.text('How do you generate a random string?'), findsWidgets);
    });
  });
}
