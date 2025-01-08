import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with API server.");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with API server.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with the server.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode ?? 0,
          dioException.response?.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to the server was cancelled.");
      case DioExceptionType.unknown:
        return ServerFailure(dioException.message?.contains('SocketException') == true
            ? 'No Internet Connection'
            : "An unknown error occurred: ${dioException.message}");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate error.");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error occurred.");
      default:
        return ServerFailure('Something went wrong. Please try again later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode >= 400 && statusCode < 500) {
      return ServerFailure(response?['error']?['message'] ?? 'Client error occurred.');
    } else if (statusCode >= 500) {
      return ServerFailure('Internal server error. Please try again later.');
    } else {
      return ServerFailure('Unexpected error occurred. Please try again.');
    }
  }
}
