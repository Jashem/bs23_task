import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/repo.dart';
import 'user_dto.dart';

part 'repo_dto.freezed.dart';
part 'repo_dto.g.dart';

String _descriptionFromJson(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class RepoDTO with _$RepoDTO {
  const RepoDTO._();
  const factory RepoDTO({
    required UserDTO owner,
    required String name,
    @JsonKey(fromJson: _descriptionFromJson) required String description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
  }) = _RepoDTO;

  factory RepoDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoDTOFromJson(json);

  Repo toDomain() {
    return Repo(
      owner: owner.toDomain(),
      name: name,
      description: description,
      stargazersCount: stargazersCount,
    );
  }
}
