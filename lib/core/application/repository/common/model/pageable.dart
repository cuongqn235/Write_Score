import 'package:write_score/data/common/paging_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable.freezed.dart';

@freezed
class Pageable with _$Pageable {
  const factory Pageable({
    required int page,
    @Default(20) int size,
  }) = _Pageable;
}

extension PageableMapper on Pageable {
  PagingRequest toDto() {
    return PagingRequest(
      page: page,
      size: size,
    );
  }
}
