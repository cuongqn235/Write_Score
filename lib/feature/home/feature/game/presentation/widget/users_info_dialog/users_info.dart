import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:write_score/design/component/button/solid_button.dart';
import 'package:write_score/design/component/text/required_label.dart';
import 'package:write_score/design/spaces.dart';
import 'package:write_score/feature/home/feature/game/presentation/widget/users_info_dialog/cubit/users_info_cubit.dart';
import 'package:write_score/helper/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersInfo extends StatefulWidget {
  const UsersInfo({super.key});
  static Future<List<String>?> show(BuildContext context) async {
    return showDialog<List<String>?>(
      context: context,
      barrierColor: Colors.black12,
      builder: (context) => const UsersInfo(),
    );
  }

  @override
  State<UsersInfo> createState() => _UsersInfoState();
}

class _UsersInfoState extends State<UsersInfo> {
  final _formKey = GlobalKey<FormState>();
  late final UsersInfoCubit cubit;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    cubit = UsersInfoCubit();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocListener<UsersInfoCubit, UsersInfoState>(
        listenWhen: (previous, current) =>
            previous.users.length != current.users.length,
        listener: (context, state) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
          );
        },
        child: AlertDialog(
          elevation: 0,
          title: const Text('players').tr(),
          content: Form(
            key: _formKey,
            child: SizedBox(
              width: 1.sw,
              height: 1.sh / 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: BlocSelector<UsersInfoCubit, UsersInfoState,
                        List<String>>(
                      selector: (state) {
                        return state.users;
                      },
                      builder: (context, users) {
                        return ListView.separated(
                          controller: _scrollController,
                          separatorBuilder: (context, index) => spaceH16,
                          padding: EdgeInsets.only(
                            top: 16.h,
                          ),
                          itemBuilder: (context, index) {
                            if (index < users.length) {
                              return _InputName(
                                valueChanged: (value) {
                                  cubit.onUpdateUserName(index, value);
                                },
                                value: users[index],
                                player: index,
                                onDeleteUser: (player) =>
                                    cubit.onDeleteUser(player),
                              );
                            }
                            return IconButton(
                              onPressed: () => cubit.onAddUser(),
                              icon: const Icon(
                                Icons.add_circle_outline_outlined,
                              ),
                            );
                          },
                          itemCount: users.length + 1,
                        );
                      },
                    ),
                  ),
                  spaceH16,
                  BlocSelector<UsersInfoCubit, UsersInfoState, List<String>>(
                    selector: (state) {
                      return state.users;
                    },
                    builder: (context, users) {
                      return AppSolidButton.medium(
                        'done',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.back(result: users);
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
      ),
    );
  }
}

class _InputName extends StatefulWidget {
  const _InputName({
    required this.valueChanged,
    required this.value,
    required this.player,
    required this.onDeleteUser,
  });

  final ValueChanged<String> valueChanged;
  final String value;
  final int player;
  final Function(int player) onDeleteUser;

  @override
  State<_InputName> createState() => _InputNameState();
}

class _InputNameState extends State<_InputName> {
  late final TextEditingController controller;
  late Timer _debounce;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: widget.value,
    );
    _debounce = Timer(Duration.zero, () {});
  }

  void _onChangeText(String text) {
    if (_debounce.isActive) {
      _debounce.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.valueChanged(text);
    });
  }

  @override
  void dispose() {
    _debounce.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Không được để trống tên người chơi';
                }
                return null;
              },
              decoration: InputDecoration(
                label: RequiredLabel('Player ${widget.player + 1}'),
              ),
              onChanged: _onChangeText,
            ),
          ),
          IconButton(
              onPressed: () => widget.onDeleteUser(widget.player),
              icon: const Icon(
                Icons.close,
              ))
        ],
      ),
    );
  }
}
