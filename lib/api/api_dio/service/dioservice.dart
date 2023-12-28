import 'package:dio/dio.dart';

class DioService {
  Future<dynamic> fetchpost(String url) async {
    Dio dio = Dio();
    return await dio
        .get(url,
            options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((response) =>
            response); // options is used to convert the string data to json and .then() is used to return thr response
  }
}
