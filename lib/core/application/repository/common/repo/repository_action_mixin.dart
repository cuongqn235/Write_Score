import 'dart:async';

import 'package:write_score/data/common/base_response.dart';
import 'package:write_score/data/common/error/error_response.dart';
import 'package:write_score/helper/logger/logger.dart';
import 'package:flutter/foundation.dart';

import '../i_failure_repository.dart';
import '../network/server_failure.dart';

mixin RepositoryActionMixin<F extends IFailureRepository> {
  IFailureRepository handleException(
    dynamic e,
    StackTrace trace,
  ) {
    logD(e, e, trace);
    if (e is IFailureRepository) {
      return e;
    } else {
      return const FailureRepo.unknow();
    }
  }

  Future<T> invokeWithData<T>({
    required Future<BaseResponse<T>> action,
    FutureOr<F?> Function(ErrorResponse error)? onError,
  }) async {
    final result = await action;
    if (!result.isSuccess || result.data?.isLeft() == true) {
      if (result.statusCode == 503 && result.data == null) {
        throw const ServerFailure.serverDown();
      }
      if (result.statusCode == 403) {
        throw const ServerFailure.unAuthorized();
      }
      if (result.data != null) {
        final errorResponse = result.data?.swap().getOrElse(
              () => throw const ServerFailure.dataEmpty(),
            );

        if (errorResponse != null) {
          final ex = await onError?.call(
            errorResponse,
          );
          if (kDebugMode) {
            print(errorResponse);
          }
          if (ex != null) throw ex;
        }
        throw const ServerFailure.unknow();
      } else {
        throw const ServerFailure.unknow();
      }
    }
    final data =
        result.data?.getOrElse(() => throw const ServerFailure.dataEmpty());
    if (data == null) {
      throw const ServerFailure.dataEmpty();
    }
    return data;
  }

  Future<void> invokeWithoutData<T>({
    required Future<BaseResponse<T>> action,
    FutureOr<F?> Function(ErrorResponse error)? onError,
  }) async {
    final result = await action;
    if (!result.isSuccess || result.data?.isLeft() == true) {
      if (result.statusCode == 503 && result.data == null) {
        throw const ServerFailure.serverDown();
      }
      if (result.data != null) {
        final errorResponse = result.data?.swap().getOrElse(
              () => throw const ServerFailure.dataEmpty(),
            );
        if (errorResponse != null) {
          final ex = await onError?.call(
            errorResponse,
          );
          if (kDebugMode) {
            print(errorResponse);
          }
          if (ex != null) throw ex;
        }
        throw const ServerFailure.unknow();
      } else {
        throw const ServerFailure.unknow();
      }
    }
    return;
  }
}
