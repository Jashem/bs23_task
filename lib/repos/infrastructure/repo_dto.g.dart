// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoDTOImpl _$$RepoDTOImplFromJson(Map<String, dynamic> json) =>
    _$RepoDTOImpl(
      owner: UserDTO.fromJson(json['owner'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: _descriptionFromJson(json['description']),
      stargazersCount: json['stargazers_count'] as int,
      updatedAt:
          const DateTimeConverter().fromJson(json['updated_at'] as Object),
    );

Map<String, dynamic> _$$RepoDTOImplToJson(_$RepoDTOImpl instance) =>
    <String, dynamic>{
      'owner': instance.owner.toJson(),
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'updated_at': const DateTimeConverter().toJson(instance.updatedAt),
    };
