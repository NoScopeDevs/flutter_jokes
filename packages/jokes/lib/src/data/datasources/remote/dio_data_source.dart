import 'package:dio/dio.dart';
import 'package:errors/errors.dart';

import '../../models/joke_model.dart';

import 'remote_data_source.dart';

class DioDataSource implements IRemoteDataSource {
  DioDataSource({
    required String url,
    required Dio client,
  })   : _url = url,
        _client = client;

  final String _url;
  final Dio _client;

  @override
  Future<JokeModel> getJoke() async {
    try {
      final result = await _client.get(_url);

      if (result.statusCode == 200) {
        return JokeModel.fromJson(result.data);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
