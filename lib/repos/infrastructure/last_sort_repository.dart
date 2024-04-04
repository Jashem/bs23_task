import 'last_sort_local_service.dart';

class LastSortRepository {
  final LastSortLocalService _localService;

  LastSortRepository(this._localService);

  Future<String?> getLastSortValue() async {
    try {
      return await _localService.getLastSort();
    } catch (e) {
      return null;
    }
  }

  Future<void> saveLastSortValue(String value) async {
    await _localService.saveLastSort(value);
  }
}
