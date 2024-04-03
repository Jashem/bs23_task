import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/domain/failure.dart';
import '../shared/providers.dart';

class FailureRepoTile extends ConsumerWidget {
  final Failure failure;

  const FailureRepoTile({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).colorScheme.error,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: const Text('An error occured, please, retry'),
          subtitle: Text(
            'API returned ${failure.code ?? ""}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(reposNotifierProvider.notifier).getNextReposPage();
            },
          ),
        ),
      ),
    );
  }
}
