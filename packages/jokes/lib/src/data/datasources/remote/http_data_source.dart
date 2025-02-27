import 'dart:convert';

import 'package:http/http.dart';
import 'package:jokes/src/data/datasources/remote/remote_data_source.dart';
import 'package:jokes/src/data/models/joke_model.dart';

class HttpDataSource implements IRemoteDataSource {
  HttpDataSource({
    required String url,
    required Client client,
  })  : _url = url,
        _client = client;

  final String _url;
  final Client _client;

  @override
  Future<JokeModel> getJoke() async {
    final result = await _client.get(
      Uri(scheme: _url),
    );

    if (result.statusCode == 200) {
      final decode = json.decode(result.body) as Map<String, dynamic>;
      return JokeModel.fromJson(decode);
    } else {
      throw Exception();
    }
  }
}
