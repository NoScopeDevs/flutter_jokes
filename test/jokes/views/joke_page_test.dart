import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:errors/errors.dart';
import 'package:jokes/jokes.dart';

import 'package:flutter_jokes/src/app.dart';
import 'package:flutter_jokes/src/features/jokes/logic/jokes_provider.dart';
import 'package:flutter_jokes/src/features/jokes/views/joke_page.dart';
import 'package:flutter_jokes/src/features/jokes/views/joke_page.i18n.dart';

class MockRepository extends Mock implements IJokesRepository {}

void main() {
  final getJokeButton = find.byKey(getJokeButtonKey);

  testWidgets(
    'Render default get joke message',
    (tester) async {
      // Setup
      await tester.pumpWidget(ProviderScope(child: JokesApp()));
      // Expect
      expect(find.text('${kTellJokeMessage.i18n}'), findsWidgets);
    },
  );

  testWidgets(
    'Press button to get a joke',
    (tester) async {
      // Setup
      IJokesRepository mockRepository = MockRepository();

      final joke = JokeModel(
        category: 'Programming',
        type: 'twopart',
        setup: 'How do you generate a random string?',
        delivery: 'Put a Windows user in front of Vim and tell him to exit.',
        id: 10,
        safe: true,
        lang: 'en',
      );

      when(mockRepository.getJoke()).thenAnswer(
        (_) => Future.value(
          Right<Failure, JokeModel>(joke),
        ),
      );

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            jokesRepositoryProvider.overrideWithProvider(
              Provider((_) => mockRepository),
            )
          ],
          child: JokesApp(),
        ),
      );

      // Validate initial state
      expect(find.text('${kTellJokeMessage.i18n}'), findsWidgets);
      expect(getJokeButton, findsWidgets);

      /// Act
      await tester.tap(getJokeButton);
      await tester.pump();

      /// Validate new joke
      expect(find.text('${kTellJokeMessage.i18n}'), findsNothing);
      expect(find.text('How do you generate a random string?'), findsWidgets);
    },
  );
}
