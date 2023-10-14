import 'package:write_score/helper/freezed/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'paging_request.freezed.dart';

part 'paging_request.g.dart';

@freezedApiRequest
class PagingRequest with _$PagingRequest {
  const factory PagingRequest({
    required int page,
    required int size,
  }) = _PagingRequest;
}
