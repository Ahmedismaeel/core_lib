class ApiResponse {
  final dynamic response;
  final String? error;

  ApiResponse(this.response, this.error);

  ApiResponse.withError(String errorValue)
      : response = null,
        error = errorValue;

  ApiResponse.withSuccess(dynamic responseValue)
      : response = responseValue,
        error = null;
}
