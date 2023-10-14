import 'package:write_score/data/local_datasource/dao/base_dao.dart';
import 'package:write_score/data/local_datasource/round/round_entity.dart';
import 'package:injectable/injectable.dart';

@singleton
class RoundDao extends AppBaseDaoImpl<RoundEntity> {
  RoundDao({
    required super.sqlite,
  }) : super(tableName: RoundEntity.table);
  @override
  RoundEntity jsonToEntity(Map<String, Object?> json) {
    return RoundEntity.fromJson(json);
  }

  Future<RoundEntity?> fetchRoundEntity(String id) async {
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

  Future<List<RoundEntity>> fetchRoundEntityByGameId(int id) async {
    final result = await sqlite.rawQuery(
      'SELECT * FROM $tableName WHERE gameId = ?',
      [id],
    );
    final entities = result.map(jsonToEntity).toList();
    return entities;
  }
}
