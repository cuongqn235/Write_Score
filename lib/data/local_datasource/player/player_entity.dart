import 'package:write_score/data/local_datasource/dao/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'player_entity.g.dart';

@JsonSerializable()
class PlayerEntity extends AppBaseEntity {
  PlayerEntity({
    this.id,
    required this.playerName,
    required this.gameId,
  });
  final int? id;
  final String playerName;
  final int gameId;

  factory PlayerEntity.fromJson(Map<String, dynamic> json) =>
      _$PlayerEntityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);

  static const table = 'player';
}
