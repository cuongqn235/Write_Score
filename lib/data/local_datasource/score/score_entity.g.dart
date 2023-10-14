// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreEntity _$ScoreEntityFromJson(Map<String, dynamic> json) => ScoreEntity(
      id: json['id'] as int?,
      score: json['score'] as int,
      roundId: json['roundId'] as int,
    );

Map<String, dynamic> _$ScoreEntityToJson(ScoreEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'roundId': instance.roundId,
    };
