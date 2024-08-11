import 'package:dio/dio.dart';
import 'end_points.dart';

class ApiManager {
  final Dio dio;

  // declare your baseUrl
  static const String baseUrl = EndPoints.baseUrl;

  ApiManager(this.dio);

  //get method.
  Future<Map<String, dynamic>> get({
    String? baseUrl2,
    required String endPoint,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
          //Content-Type , Accept have a value by default..
        },
      );
    }

    Response response = await dio.get(
      baseUrl2 == null ? '$baseUrl$endPoint' : '$baseUrl2$endPoint',
      options: Options(
        headers: headers,
      ),
    );

    return response.data;
  }

  //post method.
  Future<Map<String, dynamic>> post({
    required String endPoint,
    required dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
          //Content-Type , Accept have a value by default..
        },
      );
    }

    Response response = await dio.post(
      '$baseUrl$endPoint',
      data: data,
      options: Options(
        headers: headers,
      ),
    );

    return response.data;
  }

  //update methodز
  Future<Map<String, dynamic>> update({
    required String endPoint,
    required dynamic data,
    String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
          //Content-Type , Accept have a value by default..
        },
      );
    }

    Response response = await dio.post(
      '$baseUrl$endPoint',
      data: data,
      options: Options(
        headers: headers,
      ),
    );

    return response.data;
  }
}

// void initDio() {
//   Dio dio = Dio();
//   dio.options = BaseOptions(
//     baseUrl: EndPoints.baseUrl,
//     sendTimeout: const Duration(seconds: 20),
//     receiveTimeout: const Duration(seconds: 20),
//     connectTimeout: const Duration(seconds: 20),
//     headers: {},
//   );
// }
