import 'package:dio/dio.dart';

import 'error_response.dart';
part 'error_mapper.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // super.onError(_ApiErrorMapper.map(err), handler);
    super.onError(err, handler);
  }
}
