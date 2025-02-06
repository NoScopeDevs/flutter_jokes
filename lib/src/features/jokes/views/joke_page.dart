import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/app_version.dart';
import '../logic/jokes_provider.dart';

import 'widgets.dart';

const contentSpacing = SizedBox(height: 50);

/// * Keys for testing
final getJokeButtonKey = UniqueKey();
final loadingIndicatorKey = UniqueKey();

class JokePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterJokes'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            contentSpacing,
            const JokeConsumer(),
            contentSpacing,
            Align(
              child: const _GetJokeButton(),
            ),
            contentSpacing,
            AppVersion(),
            contentSpacing,
          ],
        ),
      ),
    );
  }
}

class JokeConsumer extends ConsumerWidget {
  const JokeConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jokesNotifierProvider);
    return state.when(
      initial: () => _Message('Tell Joke'),
      data: (joke) => JokeCard(joke: joke),
      loading: () => LoadingWidget(key: loadingIndicatorKey),
      error: (e) => _Message('Error'),
    );
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
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _GetJokeButton extends ConsumerWidget {
  const _GetJokeButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jokesNotifierProvider);

    return CupertinoButton.filled(
      key: getJokeButtonKey,
      child: Text('Give me a joke'),
      onPressed: !state.isLoading
          ? ref.read(jokesNotifierProvider.notifier).getJoke
          : null,
    );
  }
}
