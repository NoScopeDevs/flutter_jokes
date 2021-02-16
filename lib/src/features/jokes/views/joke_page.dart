import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/app_version.dart';
import '../logic/jokes_state.dart';

import 'joke_page.i18n.dart';
import 'widgets.dart';

/// Keys for testing
final getJokeButtonKey = UniqueKey();
final loadingIndicatorKey = UniqueKey();

class JokePage extends StatelessWidget {
  /// Static method to return the widget as a PageRoute
  static Route go() => MaterialPageRoute<void>(builder: (_) => JokePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kAppTitle.i18n), elevation: 0),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            const JokeConsumer(),
            const SizedBox(height: 50),
            CupertinoButton.filled(
              key: getJokeButtonKey,
              child: Text(kGiveMeAJoke.i18n),
              onPressed: () {
                // TODO: Get joke
              },
            ),
            Spacer(),
            AppVersion(),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}

class JokeConsumer extends ConsumerWidget {
  const JokeConsumer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // TODO: Use provider
    JokesState state;

    if (state is Initial) {
      return _Message(kTellJokeMessage.i18n);
    } else if (state is Loading) {
      return LoadingWidget(key: loadingIndicatorKey);
    } else if (state is JokeAvailable) {
      return JokeCard(joke: state.joke);
    } else if (state is Error) {
      return _Message('Error');
    } else {
      return _Message('Error');
    }
  }
}

class _Message extends StatelessWidget {
  const _Message(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        message,
        style: Theme.of(context).textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}
