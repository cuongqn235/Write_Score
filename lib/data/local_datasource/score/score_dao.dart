import 'package:write_score/data/local_datasource/dao/base_dao.dart';
import 'package:write_score/data/local_datasource/score/score_entity.dart';
import 'package:injectable/injectable.dart';

@singleton
class ScoreDao extends AppBaseDaoImpl<ScoreEntity> {
  ScoreDao({
    required super.sqlite,
  }) : super(tableName: ScoreEntity.table);
  @override
  ScoreEntity jsonToEntity(Map<String, Object?> json) {
    return ScoreEntity.fromJson(json);
  }

  Future<ScoreEntity?> fetchScoreEntity(String id) async {
    final result = await sqlite.rawQuery(
      'SELECT * FROM $tableName WHERE id = ?',
      [id],
    );
    final entities = result.map(jsonToEntity).toList();
    if (entities.isEmpty) {
      return null;
    }
    return entities.first;
  }

  Future<List<ScoreEntity>> fetchScoreEntityByRoundId(int id) async {
    final result = await sqlite.rawQuery(
      'SELECT * FROM $tableName WHERE roundId = ?',
      [id],
    );
    final entities = result.map(jsonToEntity).toList();
    return entities;
  }
}
