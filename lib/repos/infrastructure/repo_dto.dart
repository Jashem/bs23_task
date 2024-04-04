import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/shared/extensions.dart';
import '../domain/repo.dart';
import 'user_dto.dart';

part 'repo_dto.freezed.dart';
part 'repo_dto.g.dart';

String _descriptionFromJson(Object? json) {
  return (json as String?) ?? '';
}

DateTime _updatedAtFromJson(Object json) {
  if (json is int) {
    return json.toDate();
  }
  return (json as String).toDate();
}

class DateTimeConverter implements JsonConverter<DateTime, Object> {
  const DateTimeConverter();

  @override
  DateTime fromJson(Object s) => _updatedAtFromJson(s);

  @override
  int toJson(DateTime dt) => dt.millisecondsSinceEpoch;
}

@freezed
class RepoDTO with _$RepoDTO {
  const RepoDTO._();
  const factory RepoDTO({
    required UserDTO owner,
    required String name,
    @JsonKey(fromJson: _descriptionFromJson) required String description,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'updated_at')
    @DateTimeConverter()
    required DateTime updatedAt,
  }) = _RepoDTO;

  factory RepoDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoDTOFromJson(json);

  Repo toDomain() {
    return Repo(
      owner: owner.toDomain(),
      name: name,
      description: description,
      stargazersCount: stargazersCount,
      updatedAt: updatedAt,
    );
  }
}
