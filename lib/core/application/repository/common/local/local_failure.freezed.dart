// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalFailureUnknow value) unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalFailureUnknow value)? unknow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalFailureUnknow value)? unknow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalFailureCopyWith<$Res> {
  factory $LocalFailureCopyWith(
          LocalFailure value, $Res Function(LocalFailure) then) =
      _$LocalFailureCopyWithImpl<$Res, LocalFailure>;
}

/// @nodoc
class _$LocalFailureCopyWithImpl<$Res, $Val extends LocalFailure>
    implements $LocalFailureCopyWith<$Res> {
  _$LocalFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalFailureUnknowImplCopyWith<$Res> {
  factory _$$LocalFailureUnknowImplCopyWith(_$LocalFailureUnknowImpl value,
          $Res Function(_$LocalFailureUnknowImpl) then) =
      __$$LocalFailureUnknowImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalFailureUnknowImplCopyWithImpl<$Res>
    extends _$LocalFailureCopyWithImpl<$Res, _$LocalFailureUnknowImpl>
    implements _$$LocalFailureUnknowImplCopyWith<$Res> {
  __$$LocalFailureUnknowImplCopyWithImpl(_$LocalFailureUnknowImpl _value,
      $Res Function(_$LocalFailureUnknowImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalFailureUnknowImpl implements _LocalFailureUnknow {
  const _$LocalFailureUnknowImpl();

  @override
  String toString() {
    return 'LocalFailure.unknow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocalFailureUnknowImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknow,
  }) {
    return unknow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknow,
  }) {
    return unknow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknow,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalFailureUnknow value) unknow,
  }) {
    return unknow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalFailureUnknow value)? unknow,
  }) {
    return unknow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalFailureUnknow value)? unknow,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(this);
    }
    return orElse();
  }
}

abstract class _LocalFailureUnknow implements LocalFailure {
  const factory _LocalFailureUnknow() = _$LocalFailureUnknowImpl;
}
