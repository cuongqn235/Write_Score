// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerEntity _$PlayerEntityFromJson(Map<String, dynamic> json) => PlayerEntity(
      id: json['id'] as int?,
      playerName: json['playerName'] as String,
      gameId: json['gameId'] as int,
    );

Map<String, dynamic> _$PlayerEntityToJson(PlayerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'playerName': instance.playerName,
      'gameId': instance.gameId,
    };
