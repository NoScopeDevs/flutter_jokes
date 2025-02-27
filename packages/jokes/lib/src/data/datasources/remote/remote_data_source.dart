// IDC
// ignore_for_file: one_member_abstracts

import 'package:jokes/src/domain/domain.dart' show Joke;

abstract class IRemoteDataSource {
  Future<Joke> getJoke();
}
