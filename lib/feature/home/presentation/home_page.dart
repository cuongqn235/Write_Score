import 'package:easy_localization/easy_localization.dart';
import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:write_score/design/foundation/colors.dart';
import 'package:write_score/design/spaces.dart';
import 'package:write_score/feature/app/app.dart';
import 'package:write_score/feature/app/router/router.dart';
import 'package:write_score/feature/home/application/home_bloc.dart';
import 'package:write_score/feature/home/feature/game/models/game_page_params.dart';
import 'package:write_score/gen/assets.gen.dart';
import 'package:write_score/helper/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<HomeBloc>()..add(HomeEvent.onStart());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        title: const Text('title_home').tr(),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final path = $gameRoute.path;
          await appRoute.push(
            path,
            extra: GamePageParams(
              reload: () {
                bloc.add(HomeEvent.onStart());
              },
            ),
          );
        },
        heroTag: 'app_fab',
        icon: const Icon(Icons.add),
        label: const Text('title_score').tr(),
      ),
      body: SafeArea(
        child: BlocSelector<HomeBloc, HomeState, List<AppGame>>(
          selector: (state) {
            return state.games;
          },
          builder: (context, games) {
            return ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                itemBuilder: (context, index) {
                  final game = games[index];
                  return InkWell(
                    onTap: () async {
                      final path = $gameRoute.path;
                      await appRoute.push(
                        path,
                        extra: GamePageParams(
                          game: game,
                          reload: () {
                            bloc.add(HomeEvent.onStart());
                          },
                        ),
                      );
                    },
                    onLongPress: () {
                      _deleteGame(context, game: game, index: index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                        border: Border.all(),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'game_index_round',
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ).tr(namedArgs: {
                            'index': game.id.toString(),
                            'round': game.rounds.length.toString(),
                          }),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: const Divider(),
                          ),
                          () {
                            final users = game.users;
                            return Row(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'player',
                                      textAlign: TextAlign.center,
                                    ).tr(namedArgs: {'name': ''}),
                                    spaceH12,
                                    const Text(
                                      'total_score',
                                      textAlign: TextAlign.center,
                                    ).tr(),
                                  ],
                                ),
                                spaceW4,
                                Expanded(
                                  child: SizedBox(
                                    height: 64.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        var total = 0;
                                        if (game.rounds.isNotEmpty) {
                                          total = game.rounds.fold(
                                              0,
                                              (previousValue, element) =>
                                                  previousValue +
                                                  element.scores[index]);
                                        }
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              users[index].isNotEmpty
                                                  ? users[index]
                                                  : 'N/A',
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            spaceH12,
                                            Text(
                                              total.toString(),
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          spaceW12,
                                      itemCount: users.length,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }(),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: const Divider(),
                    ),
                itemCount: games.length);
          },
        ),
      ),
    );
  }

  Future<dynamic> _deleteGame(
    BuildContext context, {
    required AppGame game,
    required int index,
  }) async {
    final res = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'game.title',
            style: context.textTheme.titleMedium,
          ).tr(
            namedArgs: {
              'index': game.id.toString(),
            },
          ),
          content: Text(
            'game.subtitleDelete',
            style: context.textTheme.bodyMedium,
          ).tr(),
          actions: [
            TextButton(
              onPressed: () {
                context.justBack();
              },
              child: Text(
                'cancel',
                style: context.textTheme.bodyMedium,
              ).tr(),
            ),
            TextButton(
              onPressed: () {
                context.back(result: true);
              },
              child: Text(
                'delete',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.error,
                ),
              ).tr(),
            ),
          ],
        );
      },
    );
    if (context.mounted && res != null && res) {
      context.read<HomeBloc>().add(HomeEvent.onDeleteGame(gameId: game.id));
    }
  }
}
