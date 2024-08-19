import 'package:dio/dio.dart';
import 'package:veteran_setting/utils/http_error.dart';

class HttpManager{
  static final HttpManager _instance = HttpManager._internal();
  late String token;

  factory HttpManager() => _instance;
  HttpManager._internal() {init();}
  final Dio _dio = Dio();

  init() async{
    BaseOptions baseOptions = BaseOptions(connectTimeout: const Duration(milliseconds: 10000), receiveTimeout: const Duration(milliseconds: 10000));
    baseOptions.contentType = "application/json";
    _dio.options = baseOptions;
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["imei"] = "357588016390232";
          return handler.next(options);
        }, onResponse: (response, handler) async{
          // if(response.data?['code'] ==  1036) {
          //   response.statusCode = 1036;
          //   refreshTokenFunc(DioError(requestOptions: response.requestOptions, response: response), handler);
          //   return;
          // }
          return handler.next(response);
        }, onError: (error, handler) async {
          // if(error.response != null && error.response!.data is Map && error.response!.data['code'] == 401) {
          //   refreshTokenFunc(error, handler);
          //   return;
          // }
          return handler.next(error);
        }
      )
    );
  }

  post({required String api, params, Options? options}) async {
    options == null ? _dio.options.contentType = 'application/json' : _dio.options.contentType = options.contentType;
    Response response;
    try {
      response = await _dio.post(api, data: params, options: options);
    } on DioException catch (e) {
      response = HttpError(e).factoryError();
    }
    return response;
  }

  get({required String api, params, Options? options}) async {
    options == null ? _dio.options.contentType = 'application/json' : _dio.options.contentType = options.contentType;
    Response response;
    try {
      response = await _dio.get(api, queryParameters: params, options: options);
    } on DioException catch (e) {
      response = HttpError(e).factoryError();
    }
    return response;
  }
}
