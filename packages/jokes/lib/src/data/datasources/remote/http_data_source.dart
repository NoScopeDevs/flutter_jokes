import 'dart:convert';

import 'package:errors/errors.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../../models/joke_model.dart';

import 'remote_data_source.dart';

class HttpDataSource implements IRemoteDataSource {
  HttpDataSource({
    @required String url,
    @required Client client,
  })  : assert(url != null),
        assert(client != null),
        _url = url,
        _client = client;

  final String _url;
  final Client _client;

  @override
  Future<JokeModel> getJoke() async {
    try {
      final result = await _client.get(_url);

      if (result.statusCode == 200) {
        final decode = json.decode(result.body);
        return JokeModel.fromJson(decode);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
