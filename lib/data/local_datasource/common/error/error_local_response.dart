import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_local_response.freezed.dart';

@freezed
class ErrorLocalResponse with _$ErrorLocalResponse {
  const factory ErrorLocalResponse({
    required Exception error,
    required StackTrace trace,
    Object? parent,
  }) = _ErrorLocalResponse;
}
