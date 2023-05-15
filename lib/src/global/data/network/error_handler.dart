import 'package:core/src/global/data/network/error_model.dart';
import 'package:dio/dio.dart';

// String errorHandler(dynamic body) {
//   if (body == null) {
//     return "Operation failed";
//   }
//   try {
//     ErrorModel error = ErrorModel.fromMap(body);
//     return error.message ?? "Operation failed";
//   } catch (e) {
//     return body;
//   }
// }

String errorHandler(error) {
  String errorDescription = "";
  if (error is Exception) {
    try {
      if (error is DioError) {
        switch (error.type) {
          case DioErrorType.cancel:
            errorDescription = "Request to API server was cancelled";
            break;

          case DioErrorType.receiveTimeout:
            errorDescription = "Receive timeout in connection with API server";
            break;
          case DioErrorType.badResponse:
            if (error.response!.data == null) {
              errorDescription =
                  "Failed to load data - status code: ${error.response!.statusCode}";
            } else {
              Map map;
              try {
                map = error.response!.data;
              } catch (e) {
                map = {};
              }

              if (map['error_message'] == null) {
                if (map['message'] == null) {
                  errorDescription = "${error.response?.data}";
                } else {
                  errorDescription = map['message'];
                }
              } else {
                errorDescription = map['error_message'];
              }
            }

            break;
          case DioErrorType.sendTimeout:
            errorDescription = "Send timeout with server";
            break;
          case DioErrorType.connectionTimeout:
            // TODO: Handle this case.
            break;
          case DioErrorType.badCertificate:
            // TODO: Handle this case.
            break;
          case DioErrorType.badResponse:
            // TODO: Handle this case.
            break;
          case DioErrorType.connectionError:
            // TODO: Handle this case.
            break;
          case DioErrorType.unknown:
            // TODO: Handle this case.
            break;
        }
      } else {
        errorDescription = "Unexpected error occured";
      }
    } on FormatException catch (e) {
      errorDescription = e.toString();
    }
  } else {
    errorDescription = "is not a subtype of exception";
  }
  return errorDescription;
}
