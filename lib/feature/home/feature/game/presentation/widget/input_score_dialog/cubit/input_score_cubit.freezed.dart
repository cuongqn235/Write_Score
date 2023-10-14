// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_score_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputScoreState {
  Status get status => throw _privateConstructorUsedError;
  List<int> get scores => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputScoreStateCopyWith<InputScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputScoreStateCopyWith<$Res> {
  factory $InputScoreStateCopyWith(
          InputScoreState value, $Res Function(InputScoreState) then) =
      _$InputScoreStateCopyWithImpl<$Res, InputScoreState>;
  @useResult
  $Res call({Status status, List<int> scores});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$InputScoreStateCopyWithImpl<$Res, $Val extends InputScoreState>
    implements $InputScoreStateCopyWith<$Res> {
  _$InputScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scores = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
abstract class _$$InputScoreStateImplCopyWith<$Res>
    implements $InputScoreStateCopyWith<$Res> {
  factory _$$InputScoreStateImplCopyWith(_$InputScoreStateImpl value,
          $Res Function(_$InputScoreStateImpl) then) =
      __$$InputScoreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<int> scores});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$InputScoreStateImplCopyWithImpl<$Res>
    extends _$InputScoreStateCopyWithImpl<$Res, _$InputScoreStateImpl>
    implements _$$InputScoreStateImplCopyWith<$Res> {
  __$$InputScoreStateImplCopyWithImpl(
      _$InputScoreStateImpl _value, $Res Function(_$InputScoreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scores = null,
  }) {
    return _then(_$InputScoreStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$InputScoreStateImpl implements _InputScoreState {
  const _$InputScoreStateImpl(
      {this.status = const Status.idle(), required final List<int> scores})
      : _scores = scores;

  @override
  @JsonKey()
  final Status status;
  final List<int> _scores;
  @override
  List<int> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'InputScoreState(status: $status, scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputScoreStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputScoreStateImplCopyWith<_$InputScoreStateImpl> get copyWith =>
      __$$InputScoreStateImplCopyWithImpl<_$InputScoreStateImpl>(
          this, _$identity);
}

abstract class _InputScoreState implements InputScoreState {
  const factory _InputScoreState(
      {final Status status,
      required final List<int> scores}) = _$InputScoreStateImpl;

  @override
  Status get status;
  @override
  List<int> get scores;
  @override
  @JsonKey(ignore: true)
  _$$InputScoreStateImplCopyWith<_$InputScoreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
