// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_page_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GamePageParams {
  void Function()? get reload => throw _privateConstructorUsedError;
  AppGame? get game => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamePageParamsCopyWith<GamePageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePageParamsCopyWith<$Res> {
  factory $GamePageParamsCopyWith(
          GamePageParams value, $Res Function(GamePageParams) then) =
      _$GamePageParamsCopyWithImpl<$Res, GamePageParams>;
  @useResult
  $Res call({void Function()? reload, AppGame? game});

  $AppGameCopyWith<$Res>? get game;
}

/// @nodoc
class _$GamePageParamsCopyWithImpl<$Res, $Val extends GamePageParams>
    implements $GamePageParamsCopyWith<$Res> {
  _$GamePageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reload = freezed,
    Object? game = freezed,
  }) {
    return _then(_value.copyWith(
      reload: freezed == reload
          ? _value.reload
          : reload // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AppGame?,
    ) as $Val);
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
abstract class _$$GamePageParamsImplCopyWith<$Res>
    implements $GamePageParamsCopyWith<$Res> {
  factory _$$GamePageParamsImplCopyWith(_$GamePageParamsImpl value,
          $Res Function(_$GamePageParamsImpl) then) =
      __$$GamePageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function()? reload, AppGame? game});

  @override
  $AppGameCopyWith<$Res>? get game;
}

/// @nodoc
class __$$GamePageParamsImplCopyWithImpl<$Res>
    extends _$GamePageParamsCopyWithImpl<$Res, _$GamePageParamsImpl>
    implements _$$GamePageParamsImplCopyWith<$Res> {
  __$$GamePageParamsImplCopyWithImpl(
      _$GamePageParamsImpl _value, $Res Function(_$GamePageParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reload = freezed,
    Object? game = freezed,
  }) {
    return _then(_$GamePageParamsImpl(
      reload: freezed == reload
          ? _value.reload
          : reload // ignore: cast_nullable_to_non_nullable
              as void Function()?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as AppGame?,
    ));
  }
}

/// @nodoc

class _$GamePageParamsImpl implements _GamePageParams {
  _$GamePageParamsImpl({this.reload, this.game});

  @override
  final void Function()? reload;
  @override
  final AppGame? game;

  @override
  String toString() {
    return 'GamePageParams(reload: $reload, game: $game)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePageParamsImpl &&
            (identical(other.reload, reload) || other.reload == reload) &&
            (identical(other.game, game) || other.game == game));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reload, game);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePageParamsImplCopyWith<_$GamePageParamsImpl> get copyWith =>
      __$$GamePageParamsImplCopyWithImpl<_$GamePageParamsImpl>(
          this, _$identity);
}

abstract class _GamePageParams implements GamePageParams {
  factory _GamePageParams(
      {final void Function()? reload,
      final AppGame? game}) = _$GamePageParamsImpl;

  @override
  void Function()? get reload;
  @override
  AppGame? get game;
  @override
  @JsonKey(ignore: true)
  _$$GamePageParamsImplCopyWith<_$GamePageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
