import 'package:write_score/core/application/repository/game/i_game_repository.dart';
import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:write_score/data/local_datasource/game/game_dao.dart';
import 'package:write_score/data/local_datasource/game/game_entity.dart';
import 'package:write_score/data/local_datasource/player/player_dao.dart';
import 'package:write_score/data/local_datasource/player/player_entity.dart';
import 'package:write_score/data/local_datasource/round/round_dao.dart';
import 'package:write_score/data/local_datasource/round/round_entity.dart';
import 'package:write_score/data/local_datasource/score/score_dao.dart';
import 'package:write_score/data/local_datasource/score/score_entity.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IGameRepository)
class GameRepository implements IGameRepository {
  GameRepository(this.gameDao, this.playerDao, this.roundDao, this.scoreDao);
  final GameDao gameDao;
  final PlayerDao playerDao;
  final RoundDao roundDao;
  final ScoreDao scoreDao;

  @override
  Future<AppGame> createGame() async {
    final current = DateTime.now();
    final res = await gameDao.saveWithOutRelace(
        GameEntity(id: null, createdAt: current, updatedAt: null));
    final gameEntity = await gameDao.findById(res);
    if (gameEntity == null) {
      throw Exception('Data is null');
    }
    return AppGame.fromDto(gameEntity);
  }

  @override
  Future<List<AppGame>> getAll() async {
    final res = await gameDao.getAllByDESC();
    final gamesTask = res.map((e) async {
      final users = await playerDao.fetchPlayerEntityByGameId(e.id ?? -1);
      final resRounds = await roundDao.fetchRoundEntityByGameId(e.id ?? -1);
      final roundsTask = resRounds.map((round) async {
        final resScores =
            await scoreDao.fetchScoreEntityByRoundId(round.id ?? -1);
        return AppRound(
          round: round.round,
          scores: resScores.map((score) => score.score).toList(),
        );
      }).toList();
      final rounds = await Future.wait(roundsTask);
      return AppGame.fromDto(
        e,
        players: users,
      ).copyWith(
        rounds: rounds,
      );
    }).toList();
    final games = await Future.wait(gamesTask);
    return games;
  }

  @override
  Future<void> addUsers(
      {required int gameId, required List<String> users}) async {
    playerDao.saveAll(
        users.map((e) => PlayerEntity(playerName: e, gameId: gameId)).toList());
    return;
  }

  @override
  Future<AppRound> addRound(
      {required int gameId,
      required int roundCount,
      required List<int> scores}) async {
    final round =
        await roundDao.save(RoundEntity(round: roundCount, gameId: gameId));
    final scoresEntity = scores
        .map(
          (e) => ScoreEntity(score: e, roundId: round),
        )
        .toList();
    await scoreDao.saveAll(scoresEntity);
    return AppRound(
      round: round,
      scores: scores,
    );
  }
}
