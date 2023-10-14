import 'package:write_score/core/application/repository/common/i_failure_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_failure.freezed.dart';

@freezed
class LocalFailure with _$LocalFailure, IFailureRepository {
  const factory LocalFailure.unknow() = _LocalFailureUnknow;
}
