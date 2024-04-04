import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/application/paginated_items_notifier.dart';
import '../../core/shared/providers.dart';
import '../application/repos_notifier.dart';
import '../application/last_sort_notifier.dart';
import '../domain/repo.dart';
import '../infrastructure/last_sort_local_service.dart';
import '../infrastructure/last_sort_repository.dart';
import '../infrastructure/repos_local_service.dart';
import '../infrastructure/repos_remote_service.dart';
import '../infrastructure/repos_repository.dart';

final reposRemoteServiceProvider = Provider<ReposRemoteService>((ref) {
  return ReposRemoteService(ref.watch(dioProvider));
});

final reposLocalServiceProvider = Provider<ReposLocalService>((ref) {
  return ReposLocalService(ref.watch(sembastProvider));
});

final reposRepositoryProvider = Provider<ReposRepository>((ref) {
  return ReposRepository(ref.watch(reposRemoteServiceProvider),
      ref.watch(reposLocalServiceProvider));
});

final reposNotifierProvider =
    NotifierProvider<ReposNotifier, PaginatedItemsState<Repo>>(
        ReposNotifier.new);

final lastSortLocalServiceProvider = Provider<LastSortLocalService>((ref) {
  return LastSortLocalService(ref.watch(sembastProvider));
});

final lastSortRepositoryProvider = Provider<LastSortRepository>((ref) {
  return LastSortRepository(ref.watch(lastSortLocalServiceProvider));
});

final sortNotifierProvider =
    NotifierProvider<LastSortNotifier, String?>(LastSortNotifier.new);
