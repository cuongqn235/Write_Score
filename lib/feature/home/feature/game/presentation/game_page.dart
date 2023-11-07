import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:write_score/core/application/repository/game/models/app_game.dart';
import 'package:write_score/design/spaces.dart';
import 'package:write_score/feature/home/feature/game/application/game_bloc.dart';
import 'package:write_score/feature/home/feature/game/models/game_page_params.dart';
import 'package:write_score/feature/home/feature/game/presentation/widget/input_score_dialog/input_score.dart';
import 'package:write_score/feature/home/feature/game/presentation/widget/users_info_dialog/users_info.dart';
import 'package:write_score/helper/logger/logger.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key, this.params});
  final GamePageParams? params;
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late final GameBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<GameBloc>();
    setupValue();
  }

  void setupValue() {
    if (widget.params != null && widget.params!.game != null) {
      bloc.add(GameEvent.onUpdateGame(game: widget.params!.game!));
    } else {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        await _createUsers();
      });
    }
  }

  Future<void> _createUsers() async {
    final res = await UsersInfo.show(context);
    if (!mounted || (res ?? []).isEmpty) {
      return;
    }
    logD(res);
    bloc.add(GameEvent.onStart(users: res!));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listenWhen: (previous, current) =>
          (previous.game == null && previous.game != current.game) ||
          previous.round != current.round,
      listener: (context, state) {
        widget.params?.reload?.call();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          title: const Text('title_score').tr(),
          centerTitle: true,
        ),
        floatingActionButton: BlocSelector<GameBloc, GameState, AppGame?>(
          selector: (state) {
            return state.game;
          },
          builder: (context, game) {
            return FloatingActionButton(
              onPressed: () async {
                if (game == null || game.users.isEmpty) {
                  _createUsers();
                  return;
                }
                final res = await InputScore.show(context, users: game.users);
                if (res != null) {
                  bloc.add(GameEvent.onAddRound(scores: res));
                }
              },
              heroTag: 'app_fab',
              shape: const CircleBorder(),
              child: const Icon(
                Icons.add,
              ),
            );
          },
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BlocSelector<GameBloc, GameState, List<String>>(
                    selector: (state) {
                      return state.game?.users ?? [];
                    },
                    builder: (context, users) {
                      if (users.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      return BlocSelector<GameBloc, GameState, List<AppRound>>(
                        selector: (state) {
                          return state.game?.rounds ?? [];
                        },
                        builder: (context, data) {
                          return SingleChildScrollView(
                            child: DataTable(
                              sortAscending: false,
                              columns: () {
                                return users
                                    .mapIndexed(
                                      (index, element) => DataColumn(
                                        label: const Text(
                                          'player',
                                          textAlign: TextAlign.center,
                                        ).tr(namedArgs: {
                                          'name': '\n${users[index]}'
                                        }),
                                      ),
                                    )
                                    .toList();
                              }(),
                              rows: () {
                                return [
                                  ...data.map((round) {
                                    return DataRow(
                                        cells: round.scores.map((element) {
                                      return DataCell(
                                        Center(
                                          child: Text(
                                            '$element',
                                          ),
                                        ),
                                      );
                                    }).toList());
                                  }).toList()
                                ];
                              }(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  spaceH100,
                ],
              ))
              // Expanded(
              //   // height: 44.h,
              //   child: BlocSelector<GameBloc, GameState, List<String>>(
              //     selector: (state) => state.game?.users ?? [],
              //     builder: (context, users) => ListView.separated(
              //         clipBehavior: Clip.none,
              //         scrollDirection: Axis.horizontal,
              //         shrinkWrap: true,
              //         itemBuilder: (context, index) => Column(
              //               children: [
              //                 const Text(
              //                   'Người chơi',
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 Text(
              //                   users[index],
              //                   textAlign: TextAlign.center,
              //                 ),
              //                 spaceH16,
              //                 BlocSelector<GameBloc, GameState,
              //                     List<AppRound>>(
              //                   selector: (state) => state.game?.rounds ?? [],
              //                   builder: (context, rounds) => Column(
              //                     mainAxisSize: MainAxisSize.min,
              //                     children: [
              //                       ...rounds
              //                           .mapIndexed((index, element) =>
              //                               ListView.separated(
              //                                 shrinkWrap: true,
              //                                 scrollDirection:
              //                                     Axis.horizontal,
              //                                 itemBuilder: (context, index) {
              //                                   final scores =
              //                                       rounds[index].scores;
              //                                   return SizedBox(
              //                                     height: 44.h,
              //                                     child: ListView.separated(
              //                                       itemBuilder:
              //                                           (context, index) =>
              //                                               Text(
              //                                         scores[index]
              //                                             .toString(),
              //                                         textAlign:
              //                                             TextAlign.center,
              //                                       ),
              //                                       separatorBuilder:
              //                                           (context, index) =>
              //                                               spaceW8,
              //                                       itemCount: scores.length,
              //                                     ),
              //                                   );
              //                                 },
              //                                 separatorBuilder: (
              //                                   context,
              //                                   index,
              //                                 ) =>
              //                                     spaceW8,
              //                                 itemCount: rounds.length,
              //                               ))
              //                           .toList(),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //         separatorBuilder: (context, index) => spaceW8,
              //         itemCount: users.length),
              //   ),
              // ),
              // Expanded(
              //   child: BlocSelector<GameBloc, GameState, List<AppRound>>(
              //     selector: (state) => state.game?.rounds ?? [],
              //     builder: (context, rounds) => ListView.separated(
              //       itemBuilder: (context, index) {
              //         final scores = rounds[index].scores;
              //         return ListView.separated(
              //           itemBuilder: (context, index) => Text(
              //             scores[index].toString(),
              //             textAlign: TextAlign.center,
              //           ),
              //           separatorBuilder: (context, index) => spaceW8,
              //           itemCount: scores.length,
              //         );
              //       },
              //       separatorBuilder: (
              //         context,
              //         index,
              //       ) =>
              //           spaceW8,
              //       itemCount: rounds.length,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
