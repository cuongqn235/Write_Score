import 'package:write_score/data/local_datasource/dao/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'round_entity.g.dart';

@JsonSerializable()
class RoundEntity extends AppBaseEntity {
  const RoundEntity({
    this.id,
    required this.round,
    required this.gameId,
  });
  final int? id;
  final int round;
  final int gameId;

  factory RoundEntity.fromJson(Map<String, dynamic> json) =>
      _$RoundEntityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RoundEntityToJson(this);

  static const table = 'rounds';
}
