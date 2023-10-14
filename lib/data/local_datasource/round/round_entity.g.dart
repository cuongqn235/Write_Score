// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoundEntity _$RoundEntityFromJson(Map<String, dynamic> json) => RoundEntity(
      id: json['id'] as int?,
      round: json['round'] as int,
      gameId: json['gameId'] as int,
    );

Map<String, dynamic> _$RoundEntityToJson(RoundEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'round': instance.round,
      'gameId': instance.gameId,
    };
