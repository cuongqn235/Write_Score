// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersInfoState {
  Status get status => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersInfoStateCopyWith<UsersInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersInfoStateCopyWith<$Res> {
  factory $UsersInfoStateCopyWith(
          UsersInfoState value, $Res Function(UsersInfoState) then) =
      _$UsersInfoStateCopyWithImpl<$Res, UsersInfoState>;
  @useResult
  $Res call({Status status, List<String> users});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UsersInfoStateCopyWithImpl<$Res, $Val extends UsersInfoState>
    implements $UsersInfoStateCopyWith<$Res> {
  _$UsersInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UsersInfoStateImplCopyWith<$Res>
    implements $UsersInfoStateCopyWith<$Res> {
  factory _$$UsersInfoStateImplCopyWith(_$UsersInfoStateImpl value,
          $Res Function(_$UsersInfoStateImpl) then) =
      __$$UsersInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<String> users});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UsersInfoStateImplCopyWithImpl<$Res>
    extends _$UsersInfoStateCopyWithImpl<$Res, _$UsersInfoStateImpl>
    implements _$$UsersInfoStateImplCopyWith<$Res> {
  __$$UsersInfoStateImplCopyWithImpl(
      _$UsersInfoStateImpl _value, $Res Function(_$UsersInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
  }) {
    return _then(_$UsersInfoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UsersInfoStateImpl extends _UsersInfoState {
  const _$UsersInfoStateImpl(
      {this.status = const Status.idle(),
      final List<String> users = const <String>['', '', '', '']})
      : _users = users,
        super._();

  @override
  @JsonKey()
  final Status status;
  final List<String> _users;
  @override
  @JsonKey()
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersInfoState(status: $status, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersInfoStateImplCopyWith<_$UsersInfoStateImpl> get copyWith =>
      __$$UsersInfoStateImplCopyWithImpl<_$UsersInfoStateImpl>(
          this, _$identity);
}

abstract class _UsersInfoState extends UsersInfoState {
  const factory _UsersInfoState(
      {final Status status, final List<String> users}) = _$UsersInfoStateImpl;
  const _UsersInfoState._() : super._();

  @override
  Status get status;
  @override
  List<String> get users;
  @override
  @JsonKey(ignore: true)
  _$$UsersInfoStateImplCopyWith<_$UsersInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
