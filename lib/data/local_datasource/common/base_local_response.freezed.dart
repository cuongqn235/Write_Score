// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_local_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseLocalResponse<T> {
  Either<ErrorLocalResponse, T>? get data => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseLocalResponseCopyWith<T, BaseLocalResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseLocalResponseCopyWith<T, $Res> {
  factory $BaseLocalResponseCopyWith(BaseLocalResponse<T> value,
          $Res Function(BaseLocalResponse<T>) then) =
      _$BaseLocalResponseCopyWithImpl<T, $Res, BaseLocalResponse<T>>;
  @useResult
  $Res call({Either<ErrorLocalResponse, T>? data, bool isSuccess});
}

/// @nodoc
class _$BaseLocalResponseCopyWithImpl<T, $Res,
        $Val extends BaseLocalResponse<T>>
    implements $BaseLocalResponseCopyWith<T, $Res> {
  _$BaseLocalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isSuccess = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ErrorLocalResponse, T>?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseLocalResponseImplCopyWith<T, $Res>
    implements $BaseLocalResponseCopyWith<T, $Res> {
  factory _$$BaseLocalResponseImplCopyWith(_$BaseLocalResponseImpl<T> value,
          $Res Function(_$BaseLocalResponseImpl<T>) then) =
      __$$BaseLocalResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Either<ErrorLocalResponse, T>? data, bool isSuccess});
}

/// @nodoc
class __$$BaseLocalResponseImplCopyWithImpl<T, $Res>
    extends _$BaseLocalResponseCopyWithImpl<T, $Res, _$BaseLocalResponseImpl<T>>
    implements _$$BaseLocalResponseImplCopyWith<T, $Res> {
  __$$BaseLocalResponseImplCopyWithImpl(_$BaseLocalResponseImpl<T> _value,
      $Res Function(_$BaseLocalResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? isSuccess = null,
  }) {
    return _then(_$BaseLocalResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<ErrorLocalResponse, T>?,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BaseLocalResponseImpl<T> implements _BaseLocalResponse<T> {
  const _$BaseLocalResponseImpl({this.data, required this.isSuccess});

  @override
  final Either<ErrorLocalResponse, T>? data;
  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'BaseLocalResponse<$T>(data: $data, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseLocalResponseImpl<T> &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseLocalResponseImplCopyWith<T, _$BaseLocalResponseImpl<T>>
      get copyWith =>
          __$$BaseLocalResponseImplCopyWithImpl<T, _$BaseLocalResponseImpl<T>>(
              this, _$identity);
}

abstract class _BaseLocalResponse<T> implements BaseLocalResponse<T> {
  const factory _BaseLocalResponse(
      {final Either<ErrorLocalResponse, T>? data,
      required final bool isSuccess}) = _$BaseLocalResponseImpl<T>;

  @override
  Either<ErrorLocalResponse, T>? get data;
  @override
  bool get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$BaseLocalResponseImplCopyWith<T, _$BaseLocalResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
