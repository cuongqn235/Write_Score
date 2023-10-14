// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppGame {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;
  List<AppRound> get rounds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppGameCopyWith<AppGame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGameCopyWith<$Res> {
  factory $AppGameCopyWith(AppGame value, $Res Function(AppGame) then) =
      _$AppGameCopyWithImpl<$Res, AppGame>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime? updatedAt,
      List<String> users,
      List<AppRound> rounds});
}

/// @nodoc
class _$AppGameCopyWithImpl<$Res, $Val extends AppGame>
    implements $AppGameCopyWith<$Res> {
  _$AppGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? users = null,
    Object? rounds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<AppRound>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppGameImplCopyWith<$Res> implements $AppGameCopyWith<$Res> {
  factory _$$AppGameImplCopyWith(
          _$AppGameImpl value, $Res Function(_$AppGameImpl) then) =
      __$$AppGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime? updatedAt,
      List<String> users,
      List<AppRound> rounds});
}

/// @nodoc
class __$$AppGameImplCopyWithImpl<$Res>
    extends _$AppGameCopyWithImpl<$Res, _$AppGameImpl>
    implements _$$AppGameImplCopyWith<$Res> {
  __$$AppGameImplCopyWithImpl(
      _$AppGameImpl _value, $Res Function(_$AppGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? users = null,
    Object? rounds = null,
  }) {
    return _then(_$AppGameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rounds: null == rounds
          ? _value._rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<AppRound>,
    ));
  }
}

/// @nodoc

class _$AppGameImpl implements _AppGame {
  _$AppGameImpl(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      final List<String> users = const <String>[],
      final List<AppRound> rounds = const <AppRound>[]})
      : _users = users,
        _rounds = rounds;

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  final List<String> _users;
  @override
  @JsonKey()
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<AppRound> _rounds;
  @override
  @JsonKey()
  List<AppRound> get rounds {
    if (_rounds is EqualUnmodifiableListView) return _rounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rounds);
  }

  @override
  String toString() {
    return 'AppGame(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, users: $users, rounds: $rounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._rounds, _rounds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_rounds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGameImplCopyWith<_$AppGameImpl> get copyWith =>
      __$$AppGameImplCopyWithImpl<_$AppGameImpl>(this, _$identity);
}

abstract class _AppGame implements AppGame {
  factory _AppGame(
      {required final int id,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final List<String> users,
      final List<AppRound> rounds}) = _$AppGameImpl;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<String> get users;
  @override
  List<AppRound> get rounds;
  @override
  @JsonKey(ignore: true)
  _$$AppGameImplCopyWith<_$AppGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppRound {
  int get round => throw _privateConstructorUsedError;
  List<int> get scores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppRoundCopyWith<AppRound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRoundCopyWith<$Res> {
  factory $AppRoundCopyWith(AppRound value, $Res Function(AppRound) then) =
      _$AppRoundCopyWithImpl<$Res, AppRound>;
  @useResult
  $Res call({int round, List<int> scores});
}

/// @nodoc
class _$AppRoundCopyWithImpl<$Res, $Val extends AppRound>
    implements $AppRoundCopyWith<$Res> {
  _$AppRoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? round = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppRoundImplCopyWith<$Res>
    implements $AppRoundCopyWith<$Res> {
  factory _$$AppRoundImplCopyWith(
          _$AppRoundImpl value, $Res Function(_$AppRoundImpl) then) =
      __$$AppRoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int round, List<int> scores});
}

/// @nodoc
class __$$AppRoundImplCopyWithImpl<$Res>
    extends _$AppRoundCopyWithImpl<$Res, _$AppRoundImpl>
    implements _$$AppRoundImplCopyWith<$Res> {
  __$$AppRoundImplCopyWithImpl(
      _$AppRoundImpl _value, $Res Function(_$AppRoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? round = null,
    Object? scores = null,
  }) {
    return _then(_$AppRoundImpl(
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AppRoundImpl implements _AppRound {
  const _$AppRoundImpl({required this.round, final List<int> scores = const []})
      : _scores = scores;

  @override
  final int round;
  final List<int> _scores;
  @override
  @JsonKey()
  List<int> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'AppRound(round: $round, scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppRoundImpl &&
            (identical(other.round, round) || other.round == round) &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, round, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppRoundImplCopyWith<_$AppRoundImpl> get copyWith =>
      __$$AppRoundImplCopyWithImpl<_$AppRoundImpl>(this, _$identity);
}

abstract class _AppRound implements AppRound {
  const factory _AppRound({required final int round, final List<int> scores}) =
      _$AppRoundImpl;

  @override
  int get round;
  @override
  List<int> get scores;
  @override
  @JsonKey(ignore: true)
  _$$AppRoundImplCopyWith<_$AppRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
