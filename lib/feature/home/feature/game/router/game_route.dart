import 'package:write_score/feature/common/page/base_page.dart';
import 'package:write_score/feature/home/feature/game/models/game_page_params.dart';
import 'package:write_score/feature/home/feature/game/presentation/game_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../application/game_bloc.dart';

class GameRoute {
  static GoRoute init() {
    return GoRoute(
      path: '/game',
      pageBuilder: (context, state) {
        final params = state.extra as GamePageParams?;

        return CupertinoPage(
          child: BasePage<GameBloc, GameState>(page: GamePage(params: params)),
        );
      },
    );
  }
}
