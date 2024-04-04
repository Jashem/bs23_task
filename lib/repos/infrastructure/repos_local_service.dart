import 'package:sembast/sembast.dart';
import 'package:collection/collection.dart';

import '../../core/infrastructure/pagination_config.dart';
import '../../core/infrastructure/sembast_database.dart';
import 'repo_dto.dart';

class ReposLocalService {
  final SembastDatabase _sembastDatabase;

  ReposLocalService(this._sembastDatabase);

  Future<void> upsertPage(List<RepoDTO> dtos, String query, int page) async {
    final store = intMapStoreFactory.store(query);
    final sembastPage = page - 1;

    await store
        .records(
          dtos.mapIndexed((index, _) =>
              index + PaginationConfig.itemsPerPage * sembastPage),
        )
        .put(
          _sembastDatabase.instance,
          dtos.map((e) => e.toJson()).toList(),
        );
  }

  Future<List<RepoDTO>> getPage(String query, int page) async {
    final store = intMapStoreFactory.store(query);
    final sembastPage = page - 1;

    final records = await store.find(
      _sembastDatabase.instance,
      finder: Finder(
        limit: PaginationConfig.itemsPerPage,
        offset: PaginationConfig.itemsPerPage * sembastPage,
      ),
    );
    return records.map((e) => RepoDTO.fromJson(e.value)).toList();
  }

  Future<int> getLocalPageCount(String query) async {
    final store = intMapStoreFactory.store(query);

    final repoCount = await store.query().count(_sembastDatabase.instance);
    return (repoCount / PaginationConfig.itemsPerPage).ceil();
  }

  Future<String?> getLastSort() async {
    final store = StoreRef.main();
    final sort =
        await store.record('sort').get(_sembastDatabase.instance) as String?;
    return sort;
  }

  Future<void> saveLastSort(String value) async {
    final store = StoreRef.main();
    await store.record('sort').put(_sembastDatabase.instance, value);
  }
}
