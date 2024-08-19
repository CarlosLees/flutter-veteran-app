import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HttpError{
  late DioException dioError;

  HttpError(this.dioError);

  Response factoryError() {
    DioExceptionType dioErrorType = dioError.type;
    String errorMsg = '未知错误';
    int statusCode = dioError.response?.statusCode ?? 0;
    if (kDebugMode) print(dioErrorType);
    switch(dioErrorType) {
      case DioExceptionType.connectionTimeout:
        errorMsg = '网络开小差了…';
        break;
      case DioExceptionType.sendTimeout:
        errorMsg = '网络开小差了…';
        break;
      case DioExceptionType.receiveTimeout:
        errorMsg = '网络开小差了…';
        break;
      case DioExceptionType.badResponse:
        errorMsg = factoryErrorMsg(statusCode);
        break;
      case DioExceptionType.cancel:
        errorMsg = '请求取消';
        break;
      case DioExceptionType.unknown:
        errorMsg = '网络开小差了…';
        break;
      case DioExceptionType.badCertificate:
        errorMsg = '网络开小差了…';
        break;
      case DioExceptionType.connectionError:
        errorMsg = '网络开小差了…';
        break;
    }
    return Response(
      requestOptions: RequestOptions(path: dioError.requestOptions.path),
      data: {
        "code": statusCode,
        "data": null,
        "message": errorMsg
      }
    );
  }

  String factoryErrorMsg(int statusCode) {
    switch(statusCode) {
      case 404:
        return '接口地址无效';
      default:
        return '出现异常';
    }
  }

}
