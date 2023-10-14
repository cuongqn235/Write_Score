// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      errorCode: json['errorCode'] as int?,
      message: json['message'] as String?,
      path: json['path'] as String?,
      timestamp: json['timestamp'] as String?,
      error: json['error'] as String?,
      optionalData: json['optionalData'] == null
          ? null
          : OptionalDataModel.fromJson(
              json['optionalData'] as Map<String, dynamic>),
    );

OptionalDataModel _$OptionalDataModelFromJson(Map<String, dynamic> json) =>
    OptionalDataModel(
      unlockTime: json['unlockTime'] as int?,
      availableTime: json['availableTime'] as int?,
      otpVerificationToken: json['otpVerificationToken'] as String?,
    );
