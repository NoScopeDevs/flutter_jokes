import 'package:dio/dio.dart';
import 'package:jokes/src/data/datasources/remote/remote_data_source.dart';
import 'package:jokes/src/data/models/joke_model.dart';

class DioDataSource implements IRemoteDataSource {
  DioDataSource({
    required String url,
    required Dio client,
  })  : _url = url,
        _client = client;

  final String _url;
  final Dio _client;

  @override
  Future<JokeModel> getJoke() async {
    final result = await _client.get<Map<String, dynamic>>(_url);

    if (result.statusCode == 200) {
      return JokeModel.fromJson(result.data!);
    } else {
      throw Exception();
    }
  }
}
