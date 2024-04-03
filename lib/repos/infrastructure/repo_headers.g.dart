// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoHeadersImpl _$$RepoHeadersImplFromJson(Map<String, dynamic> json) =>
    _$RepoHeadersImpl(
      link: json['link'] == null
          ? null
          : PaginationLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepoHeadersImplToJson(_$RepoHeadersImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
    };

_$PaginationLinkImpl _$$PaginationLinkImplFromJson(Map<String, dynamic> json) =>
    _$PaginationLinkImpl(
      maxPage: json['maxPage'] as int,
    );

Map<String, dynamic> _$$PaginationLinkImplToJson(
        _$PaginationLinkImpl instance) =>
    <String, dynamic>{
      'maxPage': instance.maxPage,
    };
