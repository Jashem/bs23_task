// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepoDTO _$RepoDTOFromJson(Map<String, dynamic> json) {
  return _RepoDTO.fromJson(json);
}

/// @nodoc
mixin _$RepoDTO {
  UserDTO get owner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _descriptionFromJson)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoDTOCopyWith<RepoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDTOCopyWith<$Res> {
  factory $RepoDTOCopyWith(RepoDTO value, $Res Function(RepoDTO) then) =
      _$RepoDTOCopyWithImpl<$Res, RepoDTO>;
  @useResult
  $Res call(
      {UserDTO owner,
      String name,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime updatedAt});

  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepoDTOCopyWithImpl<$Res, $Val extends RepoDTO>
    implements $RepoDTOCopyWith<$Res> {
  _$RepoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get owner {
    return $UserDTOCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepoDTOImplCopyWith<$Res> implements $RepoDTOCopyWith<$Res> {
  factory _$$RepoDTOImplCopyWith(
          _$RepoDTOImpl value, $Res Function(_$RepoDTOImpl) then) =
      __$$RepoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDTO owner,
      String name,
      @JsonKey(fromJson: _descriptionFromJson) String description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'updated_at') @DateTimeConverter() DateTime updatedAt});

  @override
  $UserDTOCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepoDTOImplCopyWithImpl<$Res>
    extends _$RepoDTOCopyWithImpl<$Res, _$RepoDTOImpl>
    implements _$$RepoDTOImplCopyWith<$Res> {
  __$$RepoDTOImplCopyWithImpl(
      _$RepoDTOImpl _value, $Res Function(_$RepoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owner = null,
    Object? name = null,
    Object? description = null,
    Object? stargazersCount = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RepoDTOImpl(
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoDTOImpl extends _RepoDTO {
  const _$RepoDTOImpl(
      {required this.owner,
      required this.name,
      @JsonKey(fromJson: _descriptionFromJson) required this.description,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      required this.updatedAt})
      : super._();

  factory _$RepoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoDTOImplFromJson(json);

  @override
  final UserDTO owner;
  @override
  final String name;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  final String description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  final DateTime updatedAt;

  @override
  String toString() {
    return 'RepoDTO(owner: $owner, name: $name, description: $description, stargazersCount: $stargazersCount, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoDTOImpl &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, owner, name, description, stargazersCount, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoDTOImplCopyWith<_$RepoDTOImpl> get copyWith =>
      __$$RepoDTOImplCopyWithImpl<_$RepoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoDTOImplToJson(
      this,
    );
  }
}

abstract class _RepoDTO extends RepoDTO {
  const factory _RepoDTO(
      {required final UserDTO owner,
      required final String name,
      @JsonKey(fromJson: _descriptionFromJson)
      required final String description,
      @JsonKey(name: 'stargazers_count') required final int stargazersCount,
      @JsonKey(name: 'updated_at')
      @DateTimeConverter()
      required final DateTime updatedAt}) = _$RepoDTOImpl;
  const _RepoDTO._() : super._();

  factory _RepoDTO.fromJson(Map<String, dynamic> json) = _$RepoDTOImpl.fromJson;

  @override
  UserDTO get owner;
  @override
  String get name;
  @override
  @JsonKey(fromJson: _descriptionFromJson)
  String get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'updated_at')
  @DateTimeConverter()
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RepoDTOImplCopyWith<_$RepoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
