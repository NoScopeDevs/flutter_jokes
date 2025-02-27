import 'package:flutter/material.dart';

import 'package:jokes/jokes.dart' show Joke;

class JokeCard extends StatelessWidget {
  const JokeCard({
    Key? key,
    required this.joke,
  }) : super(key: key);

  final Joke joke;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                joke.setup ?? 'I\'m thinking...',
                style: textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Text(
                joke.delivery ?? '',
                style: textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Icon(
                joke.safe ? Icons.check : Icons.remove,
                color: joke.safe ? Colors.green : Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
