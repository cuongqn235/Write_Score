import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_page_params.freezed.dart';

@freezed
class GamePageParams with _$GamePageParams {
  factory GamePageParams({
    void Function()? reload,
    AppGame? game,
  }) = _GamePageParams;
}
