import 'package:write_score/data/common/error/error_response.dart';
import 'package:write_score/helper/logger/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';

typedef DataResponse<T> = Either<ErrorResponse, T>;

@freezed
class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({
    required int statusCode,
    DataResponse<T>? data,
    required bool isSuccess,
  }) = _BaseResponse;

  factory BaseResponse.fromResponse({
    required Response? response,
    required T Function(dynamic value)? parse,
  }) {
    final statusCode = response?.statusCode ?? 503;
    final isSuccess = (statusCode >= 200 && statusCode <= 299);
    if (isSuccess) {
      DataResponse<T>? data;
      if (parse != null && response != null) {
        try {
          data = right(parse.call(response.data ?? <String, dynamic>{}));
        } catch (e, trace) {
          logD(e, e, trace);
        }
      }
      return BaseResponse<T>(
        statusCode: statusCode,
        data: data,
        isSuccess: true,
      );
    } else {
      DataResponse<T>? data;
      if (response != null) {
        try {
          data = left(ErrorResponse.fromJson(response.data));
        } catch (e, trace) {
          logD(e, e, trace);
        }
      }

      return BaseResponse<T>(
        statusCode: statusCode,
        data: data,
        isSuccess: false,
      );
    }
  }
}
