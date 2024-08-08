import 'package:dio/dio.dart';
import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure({
    required super.message,
    super.statusCode,
  });

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          message: 'Connection Timeout ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          message: 'Send Timeout ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          message: 'Receive Timeout ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          message: 'Bad Certificate ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          message: 'Request to server was canceled ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          message: 'Connection Error , please try again ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          message: 'Opps , Un Expected error ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
      default:
        return ServerFailure(
          message: 'Opps , there wase an error ! ',
          statusCode: dioException.response?.statusCode.toString() ?? '',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        //.access the error from (your) error response
        message: 'Opps , there wase an error please try later',
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        message: 'Your request not found , please try later ',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        message: 'Server not found , please try later ',
      );
    } else {
      return ServerFailure(
        message: 'Opps , there wase an error please try later ',
      );
    }
  }
}
