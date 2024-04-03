import 'package:auto_route/auto_route.dart';
import '../../core/presentation/no_results_display.dart';
import '../../core/presentation/pagination_view.dart';
import '../domain/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/application/paginated_items_notifier.dart';
import '../shared/providers.dart';
import 'failure_repo_tile.dart';
import 'loading_repo_tile.dart';
import 'repo_tile.dart';

@RoutePage()
class ReposPage extends ConsumerStatefulWidget {
  const ReposPage({super.key});

  @override
  ConsumerState<ReposPage> createState() => _ReposPageState();
}

class _ReposPageState extends ConsumerState<ReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => ref.read(reposNotifierProvider.notifier).getFirstReposPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(reposNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Repositories"),
        centerTitle: true,
        elevation: 10,
      ),
      body: PaginationView(
        paginatedItemsNotifierProvider: reposNotifierProvider,
        getNextPage: (ref) =>
            ref.read(reposNotifierProvider.notifier).getNextReposPage(),
        refresh: (ref) =>
            ref.read(reposNotifierProvider.notifier).getFirstReposPage(),
        child: state.maybeWhen(
          loadSuccess: (repos, _) => repos.entity.isEmpty,
          orElse: () => false,
        )
            ? const NoResultsDisplay(
                message: "This is all we could find for you. Really...",
              )
            : _PaginatedListView(state: state),
      ),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    required this.state,
  });

  final PaginatedItemsState<Repo> state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: state.map(
        initial: (_) => 0,
        loadInProgress: (_) => _.items.entity.length + _.itemsPerPage,
        loadSuccess: (_) => _.items.entity.length,
        loadFailure: (_) => _.items.entity.length + 1,
      ),
      itemBuilder: (contex, index) {
        return state.map(
          initial: (_) => RepoTile(repo: _.items.entity[index]),
          loadInProgress: (_) {
            if (index < _.items.entity.length) {
              return RepoTile(repo: _.items.entity[index]);
            } else {
              return const LoadingRepoTile();
            }
          },
          loadSuccess: (_) => RepoTile(
            repo: _.items.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.items.entity.length) {
              return RepoTile(repo: _.items.entity[index]);
            } else {
              return FailureRepoTile(failure: _.failure);
            }
          },
        );
      },
    );
  }
}
