import 'package:write_score/data/local_datasource/dao/base_dao.dart';
import 'package:write_score/data/local_datasource/player/player_entity.dart';
import 'package:injectable/injectable.dart';

@singleton
class PlayerDao extends AppBaseDaoImpl<PlayerEntity> {
  PlayerDao({
    required super.sqlite,
  }) : super(tableName: PlayerEntity.table);
  @override
  PlayerEntity jsonToEntity(Map<String, Object?> json) {
    return PlayerEntity.fromJson(json);
  }

  Future<PlayerEntity?> fetchPlayerEntity(String id) async {
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

  Future<List<PlayerEntity>> fetchPlayerEntityByGameId(int id) async {
    final result = await sqlite.rawQuery(
      'SELECT * FROM $tableName WHERE gameId = ?',
      [id],
    );
    final entities = result.map(jsonToEntity).toList();
    return entities;
  }
}
