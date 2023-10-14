import 'package:write_score/data/local_datasource/dao/base_dao.dart';
import 'package:write_score/data/local_datasource/game/game_entity.dart';
import 'package:injectable/injectable.dart';

@singleton
class GameDao extends AppBaseDaoImpl<GameEntity> {
  GameDao({
    required super.sqlite,
  }) : super(tableName: GameEntity.table);
  @override
  GameEntity jsonToEntity(Map<String, Object?> json) {
    return GameEntity.fromJson(json);
  }

  Future<GameEntity?> fetchGameEntity(String id) async {
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

  Future<List<GameEntity>> getAllByDESC() async {
    final result = await sqlite.rawQuery(
      'SELECT * FROM $tableName ORDER BY id DESC',
    );
    final entities = result.map(jsonToEntity).toList();
    return entities;
  }
}
