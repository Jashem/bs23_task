import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/paginated_items_notifier.dart';

class PaginationView<T> extends StatelessWidget {
  final NotifierProvider<PaginatedItemsNotifier<T>, PaginatedItemsState<T>>
      paginatedItemsNotifierProvider;

  final void Function(WidgetRef ref) getNextPage;
  final Future<void> Function(WidgetRef ref)? refresh;
  final Widget child;

  const PaginationView({
    super.key,
    required this.paginatedItemsNotifierProvider,
    required this.getNextPage,
    required this.child,
    this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final child = NotificationListener<ScrollNotification>(
          onNotification: (notifications) {
            final canLoadNextPage =
                ref.read(paginatedItemsNotifierProvider).maybeMap(
                      orElse: () => false,
                      loadSuccess: (_) => _.isNextPageAvailable,
                    );
            final metrics = notifications.metrics;
            final limit =
                metrics.maxScrollExtent - metrics.viewportDimension / 3;
            if (canLoadNextPage && metrics.pixels >= limit) {
              log("lol");
              getNextPage(ref);
            }
            return false;
          },
          child: this.child,
        );
        return refresh != null
            ? RefreshIndicator(
                onRefresh: () async {
                  await refresh!(ref);
                },
                child: child,
              )
            : child;
      },
    );
  }
}
