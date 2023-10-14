import 'package:write_score/data/local_datasource/common/error/error_local_response.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_local_response.freezed.dart';

typedef DataLocalResponse<T> = Either<ErrorLocalResponse, T>;

@freezed
class BaseLocalResponse<T> with _$BaseLocalResponse<T> {
  const factory BaseLocalResponse({
    DataLocalResponse<T>? data,
    required bool isSuccess,
  }) = _BaseLocalResponse;
}
