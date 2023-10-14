// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)
        success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusIdleImplCopyWith<$Res> {
  factory _$$StatusIdleImplCopyWith(
          _$StatusIdleImpl value, $Res Function(_$StatusIdleImpl) then) =
      __$$StatusIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusIdleImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusIdleImpl>
    implements _$$StatusIdleImplCopyWith<$Res> {
  __$$StatusIdleImplCopyWithImpl(
      _$StatusIdleImpl _value, $Res Function(_$StatusIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusIdleImpl implements StatusIdle {
  const _$StatusIdleImpl();

  @override
  String toString() {
    return 'Status.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)
        success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class StatusIdle implements Status {
  const factory StatusIdle() = _$StatusIdleImpl;
}

/// @nodoc
abstract class _$$StatusSuccessImplCopyWith<$Res> {
  factory _$$StatusSuccessImplCopyWith(
          _$StatusSuccessImpl value, $Res Function(_$StatusSuccessImpl) then) =
      __$$StatusSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value, bool isCreated, bool isUpdated, bool isDeleted});
}

/// @nodoc
class __$$StatusSuccessImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusSuccessImpl>
    implements _$$StatusSuccessImplCopyWith<$Res> {
  __$$StatusSuccessImplCopyWithImpl(
      _$StatusSuccessImpl _value, $Res Function(_$StatusSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? isCreated = null,
    Object? isUpdated = null,
    Object? isDeleted = null,
  }) {
    return _then(_$StatusSuccessImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isCreated: null == isCreated
          ? _value.isCreated
          : isCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StatusSuccessImpl implements StatusSuccess {
  const _$StatusSuccessImpl(
      {this.value,
      this.isCreated = false,
      this.isUpdated = false,
      this.isDeleted = false});

  @override
  final dynamic value;
  @override
  @JsonKey()
  final bool isCreated;
  @override
  @JsonKey()
  final bool isUpdated;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'Status.success(value: $value, isCreated: $isCreated, isUpdated: $isUpdated, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusSuccessImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.isCreated, isCreated) ||
                other.isCreated == isCreated) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      isCreated,
      isUpdated,
      isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusSuccessImplCopyWith<_$StatusSuccessImpl> get copyWith =>
      __$$StatusSuccessImplCopyWithImpl<_$StatusSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)
        success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return success(value, isCreated, isUpdated, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return success?.call(value, isCreated, isUpdated, isDeleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value, isCreated, isUpdated, isDeleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StatusSuccess implements Status, StatusValue {
  const factory StatusSuccess(
      {final dynamic value,
      final bool isCreated,
      final bool isUpdated,
      final bool isDeleted}) = _$StatusSuccessImpl;

  dynamic get value;
  bool get isCreated;
  bool get isUpdated;
  bool get isDeleted;
  @JsonKey(ignore: true)
  _$$StatusSuccessImplCopyWith<_$StatusSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusLoadingImplCopyWith<$Res> {
  factory _$$StatusLoadingImplCopyWith(
          _$StatusLoadingImpl value, $Res Function(_$StatusLoadingImpl) then) =
      __$$StatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusLoadingImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusLoadingImpl>
    implements _$$StatusLoadingImplCopyWith<$Res> {
  __$$StatusLoadingImplCopyWithImpl(
      _$StatusLoadingImpl _value, $Res Function(_$StatusLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StatusLoadingImpl implements StatusLoading {
  const _$StatusLoadingImpl();

  @override
  String toString() {
    return 'Status.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)
        success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatusLoading implements Status {
  const factory StatusLoading() = _$StatusLoadingImpl;
}

/// @nodoc
abstract class _$$StatusFailureImplCopyWith<$Res> {
  factory _$$StatusFailureImplCopyWith(
          _$StatusFailureImpl value, $Res Function(_$StatusFailureImpl) then) =
      __$$StatusFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$StatusFailureImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusFailureImpl>
    implements _$$StatusFailureImplCopyWith<$Res> {
  __$$StatusFailureImplCopyWithImpl(
      _$StatusFailureImpl _value, $Res Function(_$StatusFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$StatusFailureImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$StatusFailureImpl implements StatusFailure {
  const _$StatusFailureImpl({this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Status.failure(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusFailureImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      __$$StatusFailureImplCopyWithImpl<_$StatusFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)
        success,
    required TResult Function() loading,
    required TResult Function(dynamic value) failure,
  }) {
    return failure(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult? Function()? loading,
    TResult? Function(dynamic value)? failure,
  }) {
    return failure?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(
            dynamic value, bool isCreated, bool isUpdated, bool isDeleted)?
        success,
    TResult Function()? loading,
    TResult Function(dynamic value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusIdle value) idle,
    required TResult Function(StatusSuccess value) success,
    required TResult Function(StatusLoading value) loading,
    required TResult Function(StatusFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusIdle value)? idle,
    TResult? Function(StatusSuccess value)? success,
    TResult? Function(StatusLoading value)? loading,
    TResult? Function(StatusFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusIdle value)? idle,
    TResult Function(StatusSuccess value)? success,
    TResult Function(StatusLoading value)? loading,
    TResult Function(StatusFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StatusFailure implements Status, StatusValue {
  const factory StatusFailure({final dynamic value}) = _$StatusFailureImpl;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$StatusFailureImplCopyWith<_$StatusFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
