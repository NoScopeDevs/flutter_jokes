import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jokes/src/features/jokes/bloc/jokes_bloc.dart';
import 'package:flutter_jokes/src/features/jokes/bloc/jokes_state.dart';

import '../../../core/widgets/app_version.dart';

import 'joke_page.i18n.dart';
import 'widgets.dart';

const contentSpacing = SizedBox(height: 50);

/// * Keys for testing
final getJokeButtonKey = UniqueKey();
final loadingIndicatorKey = UniqueKey();

class JokePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kAppTitle.i18n), elevation: 0),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const JokesBlocBuilder(),
            contentSpacing,
            CupertinoButton.filled(
              key: getJokeButtonKey,
              child: Text(kGiveMeAJoke.i18n),
              onPressed: () => context.read<JokesBloc>().add(GetJokeEvent()),
            ),
            const Spacer(),
            AppVersion(),
            contentSpacing,
          ],
        ),
      ),
    );
  }
}

class JokesBlocBuilder extends StatelessWidget {
  const JokesBlocBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokesBloc, JokesState>(
      builder: (context, state) {
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
      },
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
        style: Theme.of(context).textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}
