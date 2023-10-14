// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagingResponse<T> {
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<T>? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagingResponseCopyWith<T, PagingResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingResponseCopyWith<T, $Res> {
  factory $PagingResponseCopyWith(
          PagingResponse<T> value, $Res Function(PagingResponse<T>) then) =
      _$PagingResponseCopyWithImpl<T, $Res, PagingResponse<T>>;
  @useResult
  $Res call({int totalElements, int totalPages, List<T>? content});
}

/// @nodoc
class _$PagingResponseCopyWithImpl<T, $Res, $Val extends PagingResponse<T>>
    implements $PagingResponseCopyWith<T, $Res> {
  _$PagingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingResponseImplCopyWith<T, $Res>
    implements $PagingResponseCopyWith<T, $Res> {
  factory _$$PagingResponseImplCopyWith(_$PagingResponseImpl<T> value,
          $Res Function(_$PagingResponseImpl<T>) then) =
      __$$PagingResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int totalElements, int totalPages, List<T>? content});
}

/// @nodoc
class __$$PagingResponseImplCopyWithImpl<T, $Res>
    extends _$PagingResponseCopyWithImpl<T, $Res, _$PagingResponseImpl<T>>
    implements _$$PagingResponseImplCopyWith<T, $Res> {
  __$$PagingResponseImplCopyWithImpl(_$PagingResponseImpl<T> _value,
      $Res Function(_$PagingResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalElements = null,
    Object? totalPages = null,
    Object? content = freezed,
  }) {
    return _then(_$PagingResponseImpl<T>(
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$PagingResponseImpl<T> implements _PagingResponse<T> {
  const _$PagingResponseImpl(
      {required this.totalElements,
      required this.totalPages,
      final List<T>? content})
      : _content = content;

  @override
  final int totalElements;
  @override
  final int totalPages;
  final List<T>? _content;
  @override
  List<T>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PagingResponse<$T>(totalElements: $totalElements, totalPages: $totalPages, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingResponseImpl<T> &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalElements, totalPages,
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingResponseImplCopyWith<T, _$PagingResponseImpl<T>> get copyWith =>
      __$$PagingResponseImplCopyWithImpl<T, _$PagingResponseImpl<T>>(
          this, _$identity);
}

abstract class _PagingResponse<T> implements PagingResponse<T> {
  const factory _PagingResponse(
      {required final int totalElements,
      required final int totalPages,
      final List<T>? content}) = _$PagingResponseImpl<T>;

  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  List<T>? get content;
  @override
  @JsonKey(ignore: true)
  _$$PagingResponseImplCopyWith<T, _$PagingResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
