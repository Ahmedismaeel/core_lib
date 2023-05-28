import 'package:core/src/global/data/network/constants/endpoints.dart';
import 'package:core/src/global/data/sharedpref/shared_preference_helper.dart';
import 'package:dio/dio.dart';

import 'package:shared_preferences/shared_preferences.dart';

class NetworkModule {
  static Dio provideDio() {
    final dio = Dio();
    dio
      ..options.baseUrl = SharedPreferenceHelper.instance.baseUrl ?? ""
      ..options.connectTimeout = Duration(
          seconds: SharedPreferenceHelper.instance.connectionTimeout ?? 30)
      ..options.receiveTimeout = Duration(
          seconds: SharedPreferenceHelper.instance.receiveTimeout ?? 30)
      // ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
      ..interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        // requestHeader: true,
      ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {  
              options.headers
                .putIfAbsent('Content-Type', () => 'application/json');
            // getting token
            var token = await SharedPreferenceHelper.instance.authToken;

            if (token != null) {
              options.headers
                  .putIfAbsent('Authorization', () => "Bearer $token");
            } else {}

            return handler.next(options);
          },
        ),
      );

    return dio;
  }
}
