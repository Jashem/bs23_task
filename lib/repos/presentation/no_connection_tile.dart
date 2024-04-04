import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/providers.dart';

class NoConnectionRepoTile extends ConsumerWidget {
  const NoConnectionRepoTile({
    super.key,
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
          title: const Text('No Internet Connection'),
          subtitle: const Text(
            "You're not online. Some information may be outdated.",
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.warning),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref
                  .read(reposNotifierProvider.notifier)
                  .getFirstReposPage(ref.read(sortNotifierProvider));
            },
          ),
        ),
      ),
    );
  }
}
