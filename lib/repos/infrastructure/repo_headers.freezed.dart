// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoHeaders _$RepoHeadersFromJson(Map<String, dynamic> json) {
  return _RepoHeaders.fromJson(json);
}

/// @nodoc
mixin _$RepoHeaders {
  PaginationLink? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoHeadersCopyWith<RepoHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoHeadersCopyWith<$Res> {
  factory $RepoHeadersCopyWith(
          RepoHeaders value, $Res Function(RepoHeaders) then) =
      _$RepoHeadersCopyWithImpl<$Res, RepoHeaders>;
  @useResult
  $Res call({PaginationLink? link});

  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class _$RepoHeadersCopyWithImpl<$Res, $Val extends RepoHeaders>
    implements $RepoHeadersCopyWith<$Res> {
  _$RepoHeadersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationLinkCopyWith<$Res>? get link {
    if (_value.link == null) {
      return null;
    }

    return $PaginationLinkCopyWith<$Res>(_value.link!, (value) {
      return _then(_value.copyWith(link: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoHeadersImplCopyWith<$Res>
    implements $RepoHeadersCopyWith<$Res> {
  factory _$$RepoHeadersImplCopyWith(
          _$RepoHeadersImpl value, $Res Function(_$RepoHeadersImpl) then) =
      __$$RepoHeadersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginationLink? link});

  @override
  $PaginationLinkCopyWith<$Res>? get link;
}

/// @nodoc
class __$$RepoHeadersImplCopyWithImpl<$Res>
    extends _$RepoHeadersCopyWithImpl<$Res, _$RepoHeadersImpl>
    implements _$$RepoHeadersImplCopyWith<$Res> {
  __$$RepoHeadersImplCopyWithImpl(
      _$RepoHeadersImpl _value, $Res Function(_$RepoHeadersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_$RepoHeadersImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as PaginationLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoHeadersImpl extends _RepoHeaders {
  const _$RepoHeadersImpl({this.link}) : super._();

  factory _$RepoHeadersImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoHeadersImplFromJson(json);

  @override
  final PaginationLink? link;

  @override
  String toString() {
    return 'RepoHeaders(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoHeadersImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoHeadersImplCopyWith<_$RepoHeadersImpl> get copyWith =>
      __$$RepoHeadersImplCopyWithImpl<_$RepoHeadersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoHeadersImplToJson(
      this,
    );
  }
}

abstract class _RepoHeaders extends RepoHeaders {
  const factory _RepoHeaders({final PaginationLink? link}) = _$RepoHeadersImpl;
  const _RepoHeaders._() : super._();

  factory _RepoHeaders.fromJson(Map<String, dynamic> json) =
      _$RepoHeadersImpl.fromJson;

  @override
  PaginationLink? get link;
  @override
  @JsonKey(ignore: true)
  _$$RepoHeadersImplCopyWith<_$RepoHeadersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationLink _$PaginationLinkFromJson(Map<String, dynamic> json) {
  return _PaginationLink.fromJson(json);
}

/// @nodoc
mixin _$PaginationLink {
  int get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationLinkCopyWith<PaginationLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationLinkCopyWith<$Res> {
  factory $PaginationLinkCopyWith(
          PaginationLink value, $Res Function(PaginationLink) then) =
      _$PaginationLinkCopyWithImpl<$Res, PaginationLink>;
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class _$PaginationLinkCopyWithImpl<$Res, $Val extends PaginationLink>
    implements $PaginationLinkCopyWith<$Res> {
  _$PaginationLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationLinkImplCopyWith<$Res>
    implements $PaginationLinkCopyWith<$Res> {
  factory _$$PaginationLinkImplCopyWith(_$PaginationLinkImpl value,
          $Res Function(_$PaginationLinkImpl) then) =
      __$$PaginationLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxPage});
}

/// @nodoc
class __$$PaginationLinkImplCopyWithImpl<$Res>
    extends _$PaginationLinkCopyWithImpl<$Res, _$PaginationLinkImpl>
    implements _$$PaginationLinkImplCopyWith<$Res> {
  __$$PaginationLinkImplCopyWithImpl(
      _$PaginationLinkImpl _value, $Res Function(_$PaginationLinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxPage = null,
  }) {
    return _then(_$PaginationLinkImpl(
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationLinkImpl extends _PaginationLink {
  const _$PaginationLinkImpl({required this.maxPage}) : super._();

  factory _$PaginationLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationLinkImplFromJson(json);

  @override
  final int maxPage;

  @override
  String toString() {
    return 'PaginationLink(maxPage: $maxPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationLinkImpl &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationLinkImplCopyWith<_$PaginationLinkImpl> get copyWith =>
      __$$PaginationLinkImplCopyWithImpl<_$PaginationLinkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationLinkImplToJson(
      this,
    );
  }
}

abstract class _PaginationLink extends PaginationLink {
  const factory _PaginationLink({required final int maxPage}) =
      _$PaginationLinkImpl;
  const _PaginationLink._() : super._();

  factory _PaginationLink.fromJson(Map<String, dynamic> json) =
      _$PaginationLinkImpl.fromJson;

  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$PaginationLinkImplCopyWith<_$PaginationLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
