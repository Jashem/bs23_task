import '../domain/repo.dart';
import 'repo_dto.dart';

extension DTOListToDomainList on List<RepoDTO> {
  List<Repo> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
