import 'package:dartz/dartz.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/failure.dart';
import '../domain/fresh.dart';
import '../infrastructure/pagination_config.dart';

part 'paginated_items_notifier.freezed.dart';

typedef RepositoryGetter<T> = Future<Either<Failure, Fresh<List<T>>>> Function(
  int page,
);

@freezed
class PaginatedItemsState<T> with _$PaginatedItemsState<T> {
  const PaginatedItemsState._();
  const factory PaginatedItemsState.initial(Fresh<List<T>> items) = _Initial;
  const factory PaginatedItemsState.loadInProgress(
    Fresh<List<T>> items,
    int itemsPerPage,
  ) = _LoadInProgress;
  const factory PaginatedItemsState.loadSuccess(
    Fresh<List<T>> items, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginatedItemsState.loadFailure(
    Fresh<List<T>> items,
    Failure failure,
  ) = _LoadFailure;
}

class PaginatedItemsNotifier<T> extends Notifier<PaginatedItemsState<T>> {
  PaginatedItemsNotifier();

  @override
  PaginatedItemsState<T> build() {
    return PaginatedItemsState.initial(Fresh.yes([]));
  }

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    state = PaginatedItemsState.initial(Fresh.yes([]));
  }

  @protected
  Future<void> getNextPage(
    RepositoryGetter<T> getter,
  ) async {
    state = PaginatedItemsState.loadInProgress(
      state.items,
      PaginationConfig.itemsPerPage,
    );

    final failureOrRepos = await getter(_page);
    state = failureOrRepos.fold(
      (l) => PaginatedItemsState.loadFailure(
        state.items,
        l,
      ),
      (r) {
        _page++;
        return PaginatedItemsState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.items.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    );
  }
}
