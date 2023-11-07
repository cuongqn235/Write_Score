import 'package:write_score/core/application/repository/game/models/app_game.dart';

abstract class IGameRepository {
  Future<AppGame> createGame();
  Future<List<AppGame>> getAll();
  Future<void> addUsers({
    required int gameId,
    required List<String> users,
  });
  Future<AppRound> addRound({
    required int gameId,
    required int roundCount,
    required List<int> scores,
  });
  Future<void> deleteGame({
    required int gameId,
  });
}
