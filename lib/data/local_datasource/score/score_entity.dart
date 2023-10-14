import 'package:write_score/data/local_datasource/dao/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'score_entity.g.dart';

@JsonSerializable()
class ScoreEntity extends AppBaseEntity {
  const ScoreEntity({
    this.id,
    required this.score,
    required this.roundId,
  });
  final int? id;
  final int score;
  final int roundId;

  factory ScoreEntity.fromJson(Map<String, dynamic> json) =>
      _$ScoreEntityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ScoreEntityToJson(this);

  static const table = 'score';
}
