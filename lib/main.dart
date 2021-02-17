import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jokes/src/core/dependency_injection/dependency_injection.dart';
import 'package:flutter_jokes/src/features/jokes/bloc/jokes_bloc.dart';

import 'src/app.dart';

void main() {
  setUp();
  runApp(
    BlocProvider(
      create: (context) => getIt<JokesBloc>(),
      child: JokesApp(),
    ),
  );
}
