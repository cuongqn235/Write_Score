import 'package:write_score/helper/freezed/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_response.g.dart';

@jsonApiResponse
class ErrorResponse {
  const ErrorResponse({
    required this.errorCode,
    required this.message,
    required this.path,
    required this.timestamp,
    required this.error,
    @JsonKey(name: 'optionalData') this.optionalData,
  });
  final int? errorCode;
  final String? message;
  final String? path;
  final String? timestamp;
  final String? error;
  final OptionalDataModel? optionalData;
  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

@jsonApiResponse
class OptionalDataModel {
  const OptionalDataModel({
    this.unlockTime,
    this.availableTime,
    this.otpVerificationToken,
  });

  final int? unlockTime;
  final int? availableTime;
  final String? otpVerificationToken;

  factory OptionalDataModel.fromJson(Map<String, dynamic> json) =>
      _$OptionalDataModelFromJson(json);
}
