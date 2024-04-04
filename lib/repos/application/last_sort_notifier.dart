import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/last_sort_repository.dart';
import '../shared/providers.dart';

class LastSortNotifier extends Notifier<String?> {
  LastSortRepository get _repository => ref.read(lastSortRepositoryProvider);

  @override
  build() {
    return null;
  }

  Future<void> getLastSort() async {
    state = await _repository.getLastSortValue();
  }

  Future<void> setNewSort(String value) async {
    state = value;
    await _repository.saveLastSortValue(value);
  }
}
