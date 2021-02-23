import 'package:get/get_connect.dart';

class RestClient extends GetConnect {
  // Flutter dot env ??

  String baseUrl = 'http://192.168.1.6:8080';

  RestClient() {
    httpClient.baseUrl = baseUrl;
  }
}

class RestClientException implements Exception {
  final int code;
  final String message;

  RestClientException(this.message, {this.code});

  @override
  String toString() => 'RestClientException(code: $code, message: $message)';
}
