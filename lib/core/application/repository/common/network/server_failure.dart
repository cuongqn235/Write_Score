import 'package:write_score/core/application/repository/common/i_failure_repository.dart';
import 'package:write_score/helper/freezed/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failure.freezed.dart';

@freezedFailure
class ServerFailure with _$ServerFailure, IFailureRepository {
  const factory ServerFailure.serverDown() = ServerFailureServerDown;
  const factory ServerFailure.parseFailed() = ServerFailureParseFailed;
  const factory ServerFailure.unknow() = ServerFailureUnknow;
  const factory ServerFailure.dataEmpty() = ServerFailureDataEmpty;
  const factory ServerFailure.unAuthorized() = ServerFailureUnAuthorized;
}

extension ServerFailureEx on ServerFailure {
  int get priority => map(
        serverDown: (value) => 0,
        unAuthorized: (value) => 1,
        parseFailed: (value) => 4,
        unknow: (value) => 5,
        dataEmpty: (value) => 3,
      );
}
