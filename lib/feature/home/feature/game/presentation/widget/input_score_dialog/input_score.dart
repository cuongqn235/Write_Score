import 'dart:async';

import 'package:write_score/design/component/button/solid_button.dart';
import 'package:write_score/design/component/text/required_label.dart';
import 'package:write_score/design/spaces.dart';
import 'package:write_score/feature/home/feature/game/presentation/widget/input_score_dialog/cubit/input_score_cubit.dart';
import 'package:write_score/helper/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputScore extends StatefulWidget {
  const InputScore({super.key, required this.users});
  final List<String> users;
  static Future<List<int>?> show(
    BuildContext context, {
    required List<String> users,
  }) async {
    return showDialog<List<int>?>(
      context: context,
      barrierColor: Colors.black12,
      builder: (context) => InputScore(
        users: users,
      ),
    );
  }

  @override
  State<InputScore> createState() => _InputScoreState();
}

class _InputScoreState extends State<InputScore> {
  final _formKey = GlobalKey<FormState>();
  late final InputScoreCubit cubit;
  @override
  void initState() {
    super.initState();
    cubit = InputScoreCubit(
        init: InputScoreState(
      scores: widget.users.map((e) => 0).toList(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: AlertDialog(
        elevation: 0,
        title: const Text('Nhập điểm'),
        content: Form(
          key: _formKey,
          child: SizedBox(
            width: 1.sw,
            height: 1.sh / 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child:
                      BlocSelector<InputScoreCubit, InputScoreState, List<int>>(
                    selector: (state) {
                      return state.scores;
                    },
                    builder: (context, scores) {
                      return ListView.separated(
                        separatorBuilder: (context, index) => spaceH16,
                        padding: EdgeInsets.only(
                          top: 16.h,
                        ),
                        itemBuilder: (context, index) {
                          return _InputScores(
                            valueChanged: (value) {
                              cubit.onUpdate(index, value);
                            },
                            value: scores[index],
                            name: widget.users[index],
                          );
                        },
                        itemCount: scores.length,
                      );
                    },
                  ),
                ),
                spaceH16,
                BlocSelector<InputScoreCubit, InputScoreState, List<int>>(
                  selector: (state) {
                    return state.scores;
                  },
                  builder: (context, scores) {
                    return AppSolidButton.medium(
                      'Xong',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.back(result: scores);
                        }
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InputScores extends StatefulWidget {
  const _InputScores({
    required this.valueChanged,
    required this.value,
    required this.name,
  });

  final ValueChanged<int> valueChanged;
  final int value;
  final String name;

  @override
  State<_InputScores> createState() => _InputScoresState();
}

class _InputScoresState extends State<_InputScores> {
  late final TextEditingController controller;
  late Timer _debounce;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: widget.value.toString(),
    );
    _debounce = Timer(Duration.zero, () {});
  }

  void _onChangeText(int score) {
    if (_debounce.isActive) {
      _debounce.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.valueChanged(score);
    });
  }

  @override
  void dispose() {
    _debounce.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Không được để trống điểm người chơi';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: RequiredLabel('Điểm người chơi ${widget.name}'),
      ),
      onChanged: (value) {
        try {
          final score = int.parse(value);
          _onChangeText(score);
        } catch (e) {
          debugPrint(e.toString());
        }
      },
    );
  }
}
