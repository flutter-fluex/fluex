import 'package:dio/dio.dart';

import '../base/plugin.dart';

class FluexDioPlugin implements Plugin<Dio> {
  final String? baseUrl;
  final BaseOptions? options;
  final List<Interceptor> interceptors;

  FluexDioPlugin({
    this.baseUrl, 
    this.options, 
    this.interceptors = const []
  });
  
  @override
  Dio run() {
    BaseOptions options = this.options??defaultOptions(baseUrl: baseUrl);
    return Dio(options)..interceptors.addAll(interceptors);
  }

  static BaseOptions defaultOptions({
    String? method,
    String? baseUrl,
    int? connectTimeout,
    int? sendTimeout,
    int? receiveTimeout,
    bool? followRedirects,
    Map<String, dynamic>? extra,
  }) => BaseOptions(
      method: method,
      baseUrl: baseUrl??"",
      connectTimeout: connectTimeout??5000,
      sendTimeout: sendTimeout??20000,
      receiveTimeout: receiveTimeout??5000,
      followRedirects: followRedirects??true,
      extra: extra
  );
}