import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'repo.freezed.dart';

@freezed
class Repo with _$Repo {
  const Repo._();
  const factory Repo({
    required User owner,
    required String name,
    required String description,
    required int stargazersCount,
    required DateTime updatedAt,
  }) = _Repo;

  String get fullName => '${owner.name}/$name';
}
