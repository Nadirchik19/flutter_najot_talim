import 'package:dio/dio.dart';

class ApiClient {

  final Dio dio = Dio(
    BaseOptions(baseUrl: 'http://10.10.3.74:8888/api/v1'),
  );

  Future<List<dynamic>> FetchCategorries() async {
      var  response = await dio.get('/categories/list');
    List<dynamic> data = response.data;
    return data;
  }
}

