// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_local_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ErrorLocalResponse {
  Exception get error => throw _privateConstructorUsedError;
  StackTrace get trace => throw _privateConstructorUsedError;
  Object? get parent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorLocalResponseCopyWith<ErrorLocalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorLocalResponseCopyWith<$Res> {
  factory $ErrorLocalResponseCopyWith(
          ErrorLocalResponse value, $Res Function(ErrorLocalResponse) then) =
      _$ErrorLocalResponseCopyWithImpl<$Res, ErrorLocalResponse>;
  @useResult
  $Res call({Exception error, StackTrace trace, Object? parent});
}

/// @nodoc
class _$ErrorLocalResponseCopyWithImpl<$Res, $Val extends ErrorLocalResponse>
    implements $ErrorLocalResponseCopyWith<$Res> {
  _$ErrorLocalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? trace = null,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      trace: null == trace
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      parent: freezed == parent ? _value.parent : parent,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorLocalResponseImplCopyWith<$Res>
    implements $ErrorLocalResponseCopyWith<$Res> {
  factory _$$ErrorLocalResponseImplCopyWith(_$ErrorLocalResponseImpl value,
          $Res Function(_$ErrorLocalResponseImpl) then) =
      __$$ErrorLocalResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception error, StackTrace trace, Object? parent});
}

/// @nodoc
class __$$ErrorLocalResponseImplCopyWithImpl<$Res>
    extends _$ErrorLocalResponseCopyWithImpl<$Res, _$ErrorLocalResponseImpl>
    implements _$$ErrorLocalResponseImplCopyWith<$Res> {
  __$$ErrorLocalResponseImplCopyWithImpl(_$ErrorLocalResponseImpl _value,
      $Res Function(_$ErrorLocalResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? trace = null,
    Object? parent = freezed,
  }) {
    return _then(_$ErrorLocalResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      trace: null == trace
          ? _value.trace
          : trace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      parent: freezed == parent ? _value.parent : parent,
    ));
  }
}

/// @nodoc

class _$ErrorLocalResponseImpl implements _ErrorLocalResponse {
  const _$ErrorLocalResponseImpl(
      {required this.error, required this.trace, this.parent});

  @override
  final Exception error;
  @override
  final StackTrace trace;
  @override
  final Object? parent;

  @override
  String toString() {
    return 'ErrorLocalResponse(error: $error, trace: $trace, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLocalResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.trace, trace) || other.trace == trace) &&
            const DeepCollectionEquality().equals(other.parent, parent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, trace, const DeepCollectionEquality().hash(parent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLocalResponseImplCopyWith<_$ErrorLocalResponseImpl> get copyWith =>
      __$$ErrorLocalResponseImplCopyWithImpl<_$ErrorLocalResponseImpl>(
          this, _$identity);
}

abstract class _ErrorLocalResponse implements ErrorLocalResponse {
  const factory _ErrorLocalResponse(
      {required final Exception error,
      required final StackTrace trace,
      final Object? parent}) = _$ErrorLocalResponseImpl;

  @override
  Exception get error;
  @override
  StackTrace get trace;
  @override
  Object? get parent;
  @override
  @JsonKey(ignore: true)
  _$$ErrorLocalResponseImplCopyWith<_$ErrorLocalResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
