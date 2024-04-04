import 'package:auto_route/auto_route.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../core/presentation/gaps.dart';
import '../../core/presentation/no_results_display.dart';
import '../../core/presentation/pagination_view.dart';
import '../domain/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/application/paginated_items_notifier.dart';
import '../shared/providers.dart';
import 'failure_repo_tile.dart';
import 'loading_repo_tile.dart';
import 'no_connection_tile.dart';
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
      () async {
        await ref.read(sortNotifierProvider.notifier).getLastSort();
        ref
            .read(reposNotifierProvider.notifier)
            .getFirstReposPage(ref.read(sortNotifierProvider));
      },
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
        actions: const [
          _SortingWidget(),
        ],
      ),
      body: PaginationView(
        paginatedItemsNotifierProvider: reposNotifierProvider,
        getNextPage: (ref) => ref
            .read(reposNotifierProvider.notifier)
            .getNextReposPage(ref.read(sortNotifierProvider)),
        refresh: (ref) => ref
            .read(reposNotifierProvider.notifier)
            .getFirstReposPage(ref.read(sortNotifierProvider)),
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

class _SortingWidget extends ConsumerWidget {
  const _SortingWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sortNotifierProvider);
    ref.listen(sortNotifierProvider, (previous, next) {
      if (previous != next) {
        ref.read(reposNotifierProvider.notifier).getFirstReposPage(next);
      }
    });

    return PopupMenuButton(
      offset: const Offset(0, 50),
      itemBuilder: (context) => ['stars', 'updated']
          .map(
            (e) => PopupMenuItem(
              onTap: () {
                ref.read(sortNotifierProvider.notifier).setNewSort(e);
              },
              child: Row(
                children: [
                  Icon(
                    state == e
                        ? MdiIcons.radioboxMarked
                        : MdiIcons.radioboxBlank,
                  ),
                  8.hGap,
                  Text(e),
                ],
              ),
            ),
          )
          .toList(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Icon(MdiIcons.sort),
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
    return Column(
      children: [
        if (!state.items.isFresh) const NoConnectionRepoTile(),
        Expanded(
          child: ListView.builder(
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
          ),
        ),
      ],
    );
  }
}
