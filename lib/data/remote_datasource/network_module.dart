import 'package:write_score/data/common/error/error_interceptor.dart';
import 'package:write_score/data/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  // @Named("baseUrl")
  // String get baseUrl => '${Constants.domainUrl}/fph-app/api/';
  // @Named("notificationUrl")
  // String get notificationUrl => '${Constants.domainUrl}/fph-notification/api/';
  // @Named("googleMapUrl")
  // String get googleMapUrl => '${Constants.googleMapUrl}/maps/api/';
  // @Named("webSocketUrl")
  // String get webSocketUrl =>
  //     '${Constants.websocketUrl}/fph-notification/ws?accessToken=';

  @Named("baseUrl")
  String get baseUrl => 'https://dev.homeforus.vn/fph-app/api/';
  @Named("notificationUrl")
  String get notificationUrl =>
      'https://dev.homeforus.vn/fph-notification/api/';
  @Named("googleMapUrl")
  String get googleMapUrl => 'https://dev.homeforus.vn/maps/api/';
  @Named("webSocketUrl")
  String get webSocketUrl =>
      'https://dev.homeforus.vn/fph-notification/ws?accessToken=';
  @Named('authDio')
  Dio get dioAuth => _dio(baseUrl, _authInterceptors);
  @Named('tokenDio')
  Dio get dioToken => _dio(baseUrl, _tokenInterceptors);
  @Named('defaultDio')
  Dio get dioDefault => _dio(baseUrl, _normalInterceptors);
  @Named('dioNotification')
  Dio get dioNotification => _dio(notificationUrl, _normalInterceptors);
  @Named('googleMapDio')
  Dio get dioGoogleMap => _dio(googleMapUrl, _ggMapInterceptors);
  @Named('settingDio')
  Dio get dioSetting => _dio(baseUrl, _settingNormalInterceptors);
  @Named('downloadImageDio')
  Dio get dioDownloadImage => _dio(Constants.downloadImgUrl, []);

  List<Interceptor> get _authInterceptors => [
        ErrorInterceptor(),
      ];

  List<Interceptor> get _tokenInterceptors => [
        ErrorInterceptor(),
      ];

  List<Interceptor> get _normalInterceptors => [
        ErrorInterceptor(),
      ];
  List<Interceptor> get _settingNormalInterceptors => [];
  List<Interceptor> get _ggMapInterceptors => [];

  Dio _dio(
    String url,
    List<Interceptor> interceptors,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {'Content-Type': 'application/json'},
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    dio.interceptors.addAll(interceptors);
    return dio;
  }
}
