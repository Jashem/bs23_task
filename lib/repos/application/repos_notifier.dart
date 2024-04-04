import '../../core/application/paginated_items_notifier.dart';
import '../domain/repo.dart';
import '../infrastructure/repos_repository.dart';
import '../shared/providers.dart';

class ReposNotifier extends PaginatedItemsNotifier<Repo> {
  static const query = "Flutter";
  ReposRepository get _repository => ref.read(reposRepositoryProvider);

  Future<void> getFirstReposPage([String? sort]) async {
    super.resetState();
    await getNextReposPage(sort);
  }

  Future<void> getNextReposPage([String? sort]) async {
    await super.getNextPage(
      (page) => _repository.getReposPage(query, page, sort),
    );
  }
}
