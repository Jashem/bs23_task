import 'package:sembast/sembast.dart';

import '../../core/infrastructure/sembast_database.dart';

class LastSortLocalService {
  final SembastDatabase _sembastDatabase;

  LastSortLocalService(this._sembastDatabase);

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
