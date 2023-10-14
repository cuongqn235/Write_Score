import 'package:write_score/feature/common/model/status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_info_state.dart';
part 'users_info_cubit.freezed.dart';

class UsersInfoCubit extends Cubit<UsersInfoState> {
  UsersInfoCubit() : super(const UsersInfoState());

  void onUpdateUserName(int index, String name) {
    final users = List<String>.from(state.users);
    users[index] = name;
    emit(
      state.copyWith(
        users: users,
      ),
    );
  }

  void onAddUser() {
    final users = List<String>.from(state.users)..add('');
    emit(
      state.copyWith(
        users: users,
      ),
    );
  }

  void onDeleteUser(int index) {
    final users = List<String>.from(state.users)..removeAt(index);
    emit(
      state.copyWith(
        users: users,
      ),
    );
  }
}
