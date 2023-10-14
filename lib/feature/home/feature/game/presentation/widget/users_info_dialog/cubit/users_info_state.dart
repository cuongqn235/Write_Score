part of 'users_info_cubit.dart';

@freezed
class UsersInfoState with _$UsersInfoState {
  const factory UsersInfoState({
    @Default(Status.idle()) Status status,
    @Default(<String>[
      '',
      '',
      '',
      '',
    ])
    List<String> users,
  }) = _UsersInfoState;

  const UsersInfoState._();

  bool get isValid {
    bool isTempValid = true;
    false;
    for (var element in users) {
      if (element.isEmpty) {
        isTempValid = false;
      }
    }
    return isTempValid;
  }
}
