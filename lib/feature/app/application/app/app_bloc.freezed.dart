// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  bool? get isFirstLaunch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({bool? isFirstLaunch});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_value.copyWith(
      isFirstLaunch: freezed == isFirstLaunch
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isFirstLaunch});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstLaunch = freezed,
  }) {
    return _then(_$AppStateImpl(
      isFirstLaunch: freezed == isFirstLaunch
          ? _value.isFirstLaunch
          : isFirstLaunch // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl({this.isFirstLaunch});

  @override
  final bool? isFirstLaunch;

  @override
  String toString() {
    return 'AppState(isFirstLaunch: $isFirstLaunch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.isFirstLaunch, isFirstLaunch) ||
                other.isFirstLaunch == isFirstLaunch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstLaunch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({final bool? isFirstLaunch}) = _$AppStateImpl;

  @override
  bool? get isFirstLaunch;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() endOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? endOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? endOnboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventInitial value) initial,
    required TResult Function(AppEventEndOnboard value) endOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventInitial value)? initial,
    TResult? Function(AppEventEndOnboard value)? endOnboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventInitial value)? initial,
    TResult Function(AppEventEndOnboard value)? endOnboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppEventInitialImplCopyWith<$Res> {
  factory _$$AppEventInitialImplCopyWith(_$AppEventInitialImpl value,
          $Res Function(_$AppEventInitialImpl) then) =
      __$$AppEventInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventInitialImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventInitialImpl>
    implements _$$AppEventInitialImplCopyWith<$Res> {
  __$$AppEventInitialImplCopyWithImpl(
      _$AppEventInitialImpl _value, $Res Function(_$AppEventInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppEventInitialImpl implements AppEventInitial {
  const _$AppEventInitialImpl();

  @override
  String toString() {
    return 'AppEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppEventInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() endOnboard,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? endOnboard,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? endOnboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventInitial value) initial,
    required TResult Function(AppEventEndOnboard value) endOnboard,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventInitial value)? initial,
    TResult? Function(AppEventEndOnboard value)? endOnboard,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventInitial value)? initial,
    TResult Function(AppEventEndOnboard value)? endOnboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppEventInitial implements AppEvent {
  const factory AppEventInitial() = _$AppEventInitialImpl;
}

/// @nodoc
abstract class _$$AppEventEndOnboardImplCopyWith<$Res> {
  factory _$$AppEventEndOnboardImplCopyWith(_$AppEventEndOnboardImpl value,
          $Res Function(_$AppEventEndOnboardImpl) then) =
      __$$AppEventEndOnboardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventEndOnboardImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventEndOnboardImpl>
    implements _$$AppEventEndOnboardImplCopyWith<$Res> {
  __$$AppEventEndOnboardImplCopyWithImpl(_$AppEventEndOnboardImpl _value,
      $Res Function(_$AppEventEndOnboardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppEventEndOnboardImpl implements AppEventEndOnboard {
  const _$AppEventEndOnboardImpl();

  @override
  String toString() {
    return 'AppEvent.endOnboard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppEventEndOnboardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() endOnboard,
  }) {
    return endOnboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? endOnboard,
  }) {
    return endOnboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? endOnboard,
    required TResult orElse(),
  }) {
    if (endOnboard != null) {
      return endOnboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppEventInitial value) initial,
    required TResult Function(AppEventEndOnboard value) endOnboard,
  }) {
    return endOnboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppEventInitial value)? initial,
    TResult? Function(AppEventEndOnboard value)? endOnboard,
  }) {
    return endOnboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppEventInitial value)? initial,
    TResult Function(AppEventEndOnboard value)? endOnboard,
    required TResult orElse(),
  }) {
    if (endOnboard != null) {
      return endOnboard(this);
    }
    return orElse();
  }
}

abstract class AppEventEndOnboard implements AppEvent {
  const factory AppEventEndOnboard() = _$AppEventEndOnboardImpl;
}
