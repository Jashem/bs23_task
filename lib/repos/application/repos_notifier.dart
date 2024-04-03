import '../../core/application/paginated_items_notifier.dart';
import '../domain/repo.dart';
import '../infrastructure/repos_repository.dart';
import '../shared/providers.dart';

class ReposNotifier extends PaginatedItemsNotifier<Repo> {
  static const query = "Flutter";
  ReposRepository get _repository => ref.read(reposRepositoryProvider);

  Future<void> getFirstReposPage() async {
    super.resetState();
    await getNextReposPage();
  }

  Future<void> getNextReposPage() async {
    await super.getNextPage(
      (page) => _repository.getReposPage(query, page),
    );
  }
}
