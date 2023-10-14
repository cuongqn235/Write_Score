import 'package:write_score/data/local_datasource/dao/base_entity.dart';
import 'package:write_score/helper/freezed/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'game_entity.g.dart';

@JsonSerializable()
class GameEntity extends AppBaseEntity {
  const GameEntity({
    this.id,
    @DateTimeConverterFromString() required this.createdAt,
    @DateTimeConverterFromString() this.updatedAt,
  });
  final int? id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  factory GameEntity.fromJson(Map<String, dynamic> json) =>
      _$GameEntityFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$GameEntityToJson(this);
  static const table = 'game';
}
