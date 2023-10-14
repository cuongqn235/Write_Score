// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameState {
  Status get status => throw _privateConstructorUsedError;
  AppGame? get game => throw _privateConstructorUsedError;
  int get round => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({Status status, AppGame? game, int round});

  $StatusCopyWith<$Res> get status;
  $AppGameCopyWith<$Res>? get game;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? game = freezed,
    Object? round = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AppGame?,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppGameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $AppGameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
          _$GameStateImpl value, $Res Function(_$GameStateImpl) then) =
      __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, AppGame? game, int round});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $AppGameCopyWith<$Res>? get game;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
      _$GameStateImpl _value, $Res Function(_$GameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? game = freezed,
    Object? round = null,
  }) {
    return _then(_$GameStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AppGame?,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl(
      {this.status = const Status.idle(), this.game, this.round = 1});

  @override
  @JsonKey()
  final Status status;
  @override
  final AppGame? game;
  @override
  @JsonKey()
  final int round;

  @override
  String toString() {
    return 'GameState(status: $status, game: $game, round: $round)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.round, round) || other.round == round));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, game, round);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {final Status status,
      final AppGame? game,
      final int round}) = _$GameStateImpl;

  @override
  Status get status;
  @override
  AppGame? get game;
  @override
  int get round;
  @override
  @JsonKey(ignore: true)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> users) onStart,
    required TResult Function(AppGame game) onUpdateGame,
    required TResult Function(List<int> scores) onAddRound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> users)? onStart,
    TResult? Function(AppGame game)? onUpdateGame,
    TResult? Function(List<int> scores)? onAddRound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> users)? onStart,
    TResult Function(AppGame game)? onUpdateGame,
    TResult Function(List<int> scores)? onAddRound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStart value) onStart,
    required TResult Function(_OnUpdateGame value) onUpdateGame,
    required TResult Function(_OnAddRound value) onAddRound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStart value)? onStart,
    TResult? Function(_OnUpdateGame value)? onUpdateGame,
    TResult? Function(_OnAddRound value)? onAddRound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStart value)? onStart,
    TResult Function(_OnUpdateGame value)? onUpdateGame,
    TResult Function(_OnAddRound value)? onAddRound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnStartImplCopyWith<$Res> {
  factory _$$OnStartImplCopyWith(
          _$OnStartImpl value, $Res Function(_$OnStartImpl) then) =
      __$$OnStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> users});
}

/// @nodoc
class __$$OnStartImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$OnStartImpl>
    implements _$$OnStartImplCopyWith<$Res> {
  __$$OnStartImplCopyWithImpl(
      _$OnStartImpl _value, $Res Function(_$OnStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$OnStartImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OnStartImpl implements _OnStart {
  _$OnStartImpl({required final List<String> users}) : _users = users;

  final List<String> _users;
  @override
  List<String> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'GameEvent.onStart(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartImplCopyWith<_$OnStartImpl> get copyWith =>
      __$$OnStartImplCopyWithImpl<_$OnStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> users) onStart,
    required TResult Function(AppGame game) onUpdateGame,
    required TResult Function(List<int> scores) onAddRound,
  }) {
    return onStart(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> users)? onStart,
    TResult? Function(AppGame game)? onUpdateGame,
    TResult? Function(List<int> scores)? onAddRound,
  }) {
    return onStart?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> users)? onStart,
    TResult Function(AppGame game)? onUpdateGame,
    TResult Function(List<int> scores)? onAddRound,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStart value) onStart,
    required TResult Function(_OnUpdateGame value) onUpdateGame,
    required TResult Function(_OnAddRound value) onAddRound,
  }) {
    return onStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStart value)? onStart,
    TResult? Function(_OnUpdateGame value)? onUpdateGame,
    TResult? Function(_OnAddRound value)? onAddRound,
  }) {
    return onStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStart value)? onStart,
    TResult Function(_OnUpdateGame value)? onUpdateGame,
    TResult Function(_OnAddRound value)? onAddRound,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart(this);
    }
    return orElse();
  }
}

abstract class _OnStart implements GameEvent {
  factory _OnStart({required final List<String> users}) = _$OnStartImpl;

  List<String> get users;
  @JsonKey(ignore: true)
  _$$OnStartImplCopyWith<_$OnStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdateGameImplCopyWith<$Res> {
  factory _$$OnUpdateGameImplCopyWith(
          _$OnUpdateGameImpl value, $Res Function(_$OnUpdateGameImpl) then) =
      __$$OnUpdateGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppGame game});

  $AppGameCopyWith<$Res> get game;
}

/// @nodoc
class __$$OnUpdateGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$OnUpdateGameImpl>
    implements _$$OnUpdateGameImplCopyWith<$Res> {
  __$$OnUpdateGameImplCopyWithImpl(
      _$OnUpdateGameImpl _value, $Res Function(_$OnUpdateGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? game = null,
  }) {
    return _then(_$OnUpdateGameImpl(
      game: null == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AppGame,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppGameCopyWith<$Res> get game {
    return $AppGameCopyWith<$Res>(_value.game, (value) {
      return _then(_value.copyWith(game: value));
    });
  }
}

/// @nodoc

class _$OnUpdateGameImpl implements _OnUpdateGame {
  _$OnUpdateGameImpl({required this.game});

  @override
  final AppGame game;

  @override
  String toString() {
    return 'GameEvent.onUpdateGame(game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateGameImpl &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateGameImplCopyWith<_$OnUpdateGameImpl> get copyWith =>
      __$$OnUpdateGameImplCopyWithImpl<_$OnUpdateGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> users) onStart,
    required TResult Function(AppGame game) onUpdateGame,
    required TResult Function(List<int> scores) onAddRound,
  }) {
    return onUpdateGame(game);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> users)? onStart,
    TResult? Function(AppGame game)? onUpdateGame,
    TResult? Function(List<int> scores)? onAddRound,
  }) {
    return onUpdateGame?.call(game);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> users)? onStart,
    TResult Function(AppGame game)? onUpdateGame,
    TResult Function(List<int> scores)? onAddRound,
    required TResult orElse(),
  }) {
    if (onUpdateGame != null) {
      return onUpdateGame(game);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStart value) onStart,
    required TResult Function(_OnUpdateGame value) onUpdateGame,
    required TResult Function(_OnAddRound value) onAddRound,
  }) {
    return onUpdateGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStart value)? onStart,
    TResult? Function(_OnUpdateGame value)? onUpdateGame,
    TResult? Function(_OnAddRound value)? onAddRound,
  }) {
    return onUpdateGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStart value)? onStart,
    TResult Function(_OnUpdateGame value)? onUpdateGame,
    TResult Function(_OnAddRound value)? onAddRound,
    required TResult orElse(),
  }) {
    if (onUpdateGame != null) {
      return onUpdateGame(this);
    }
    return orElse();
  }
}

abstract class _OnUpdateGame implements GameEvent {
  factory _OnUpdateGame({required final AppGame game}) = _$OnUpdateGameImpl;

  AppGame get game;
  @JsonKey(ignore: true)
  _$$OnUpdateGameImplCopyWith<_$OnUpdateGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAddRoundImplCopyWith<$Res> {
  factory _$$OnAddRoundImplCopyWith(
          _$OnAddRoundImpl value, $Res Function(_$OnAddRoundImpl) then) =
      __$$OnAddRoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> scores});
}

/// @nodoc
class __$$OnAddRoundImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$OnAddRoundImpl>
    implements _$$OnAddRoundImplCopyWith<$Res> {
  __$$OnAddRoundImplCopyWithImpl(
      _$OnAddRoundImpl _value, $Res Function(_$OnAddRoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$OnAddRoundImpl(
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$OnAddRoundImpl implements _OnAddRound {
  _$OnAddRoundImpl({required final List<int> scores}) : _scores = scores;

  final List<int> _scores;
  @override
  List<int> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'GameEvent.onAddRound(scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddRoundImpl &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddRoundImplCopyWith<_$OnAddRoundImpl> get copyWith =>
      __$$OnAddRoundImplCopyWithImpl<_$OnAddRoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> users) onStart,
    required TResult Function(AppGame game) onUpdateGame,
    required TResult Function(List<int> scores) onAddRound,
  }) {
    return onAddRound(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> users)? onStart,
    TResult? Function(AppGame game)? onUpdateGame,
    TResult? Function(List<int> scores)? onAddRound,
  }) {
    return onAddRound?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> users)? onStart,
    TResult Function(AppGame game)? onUpdateGame,
    TResult Function(List<int> scores)? onAddRound,
    required TResult orElse(),
  }) {
    if (onAddRound != null) {
      return onAddRound(scores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStart value) onStart,
    required TResult Function(_OnUpdateGame value) onUpdateGame,
    required TResult Function(_OnAddRound value) onAddRound,
  }) {
    return onAddRound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStart value)? onStart,
    TResult? Function(_OnUpdateGame value)? onUpdateGame,
    TResult? Function(_OnAddRound value)? onAddRound,
  }) {
    return onAddRound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStart value)? onStart,
    TResult Function(_OnUpdateGame value)? onUpdateGame,
    TResult Function(_OnAddRound value)? onAddRound,
    required TResult orElse(),
  }) {
    if (onAddRound != null) {
      return onAddRound(this);
    }
    return orElse();
  }
}

abstract class _OnAddRound implements GameEvent {
  factory _OnAddRound({required final List<int> scores}) = _$OnAddRoundImpl;

  List<int> get scores;
  @JsonKey(ignore: true)
  _$$OnAddRoundImplCopyWith<_$OnAddRoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
