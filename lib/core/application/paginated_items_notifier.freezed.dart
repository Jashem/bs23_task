// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_items_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedItemsState<T> {
  Fresh<List<T>> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<T>> items) initial,
    required TResult Function(Fresh<List<T>> items, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<T>> items, Failure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<T>> items)? initial,
    TResult? Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult? Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<T>> items, Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<T>> items)? initial,
    TResult Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<T>> items, Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_LoadInProgress<T> value)? loadInProgress,
    TResult? Function(_LoadSuccess<T> value)? loadSuccess,
    TResult? Function(_LoadFailure<T> value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedItemsStateCopyWith<T, PaginatedItemsState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedItemsStateCopyWith<T, $Res> {
  factory $PaginatedItemsStateCopyWith(PaginatedItemsState<T> value,
          $Res Function(PaginatedItemsState<T>) then) =
      _$PaginatedItemsStateCopyWithImpl<T, $Res, PaginatedItemsState<T>>;
  @useResult
  $Res call({Fresh<List<T>> items});

  $FreshCopyWith<List<T>, $Res> get items;
}

/// @nodoc
class _$PaginatedItemsStateCopyWithImpl<T, $Res,
        $Val extends PaginatedItemsState<T>>
    implements $PaginatedItemsStateCopyWith<T, $Res> {
  _$PaginatedItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Fresh<List<T>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<List<T>, $Res> get items {
    return $FreshCopyWith<List<T>, $Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res>
    implements $PaginatedItemsStateCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Fresh<List<T>> items});

  @override
  $FreshCopyWith<List<T>, $Res> get items;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$PaginatedItemsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$InitialImpl<T>(
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Fresh<List<T>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl<T> extends _Initial<T> {
  const _$InitialImpl(this.items) : super._();

  @override
  final Fresh<List<T>> items;

  @override
  String toString() {
    return 'PaginatedItemsState<$T>.initial(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<T> &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      __$$InitialImplCopyWithImpl<T, _$InitialImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<T>> items) initial,
    required TResult Function(Fresh<List<T>> items, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<T>> items, Failure failure)
        loadFailure,
  }) {
    return initial(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<T>> items)? initial,
    TResult? Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult? Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<T>> items, Failure failure)? loadFailure,
  }) {
    return initial?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<T>> items)? initial,
    TResult Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<T>> items, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_LoadInProgress<T> value)? loadInProgress,
    TResult? Function(_LoadSuccess<T> value)? loadSuccess,
    TResult? Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> extends PaginatedItemsState<T> {
  const factory _Initial(final Fresh<List<T>> items) = _$InitialImpl<T>;
  const _Initial._() : super._();

  @override
  Fresh<List<T>> get items;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<T, _$InitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<T, $Res>
    implements $PaginatedItemsStateCopyWith<T, $Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl<T> value,
          $Res Function(_$LoadInProgressImpl<T>) then) =
      __$$LoadInProgressImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Fresh<List<T>> items, int itemsPerPage});

  @override
  $FreshCopyWith<List<T>, $Res> get items;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<T, $Res>
    extends _$PaginatedItemsStateCopyWithImpl<T, $Res, _$LoadInProgressImpl<T>>
    implements _$$LoadInProgressImplCopyWith<T, $Res> {
  __$$LoadInProgressImplCopyWithImpl(_$LoadInProgressImpl<T> _value,
      $Res Function(_$LoadInProgressImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? itemsPerPage = null,
  }) {
    return _then(_$LoadInProgressImpl<T>(
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Fresh<List<T>>,
      null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl<T> extends _LoadInProgress<T> {
  const _$LoadInProgressImpl(this.items, this.itemsPerPage) : super._();

  @override
  final Fresh<List<T>> items;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginatedItemsState<$T>.loadInProgress(items: $items, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl<T> &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items, itemsPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgressImplCopyWith<T, _$LoadInProgressImpl<T>> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<T, _$LoadInProgressImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<T>> items) initial,
    required TResult Function(Fresh<List<T>> items, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<T>> items, Failure failure)
        loadFailure,
  }) {
    return loadInProgress(items, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<T>> items)? initial,
    TResult? Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult? Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<T>> items, Failure failure)? loadFailure,
  }) {
    return loadInProgress?.call(items, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<T>> items)? initial,
    TResult Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<T>> items, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(items, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_LoadInProgress<T> value)? loadInProgress,
    TResult? Function(_LoadSuccess<T> value)? loadSuccess,
    TResult? Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress<T> extends PaginatedItemsState<T> {
  const factory _LoadInProgress(
          final Fresh<List<T>> items, final int itemsPerPage) =
      _$LoadInProgressImpl<T>;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<T>> get items;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgressImplCopyWith<T, _$LoadInProgressImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<T, $Res>
    implements $PaginatedItemsStateCopyWith<T, $Res> {
  factory _$$LoadSuccessImplCopyWith(_$LoadSuccessImpl<T> value,
          $Res Function(_$LoadSuccessImpl<T>) then) =
      __$$LoadSuccessImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Fresh<List<T>> items, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<T>, $Res> get items;
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<T, $Res>
    extends _$PaginatedItemsStateCopyWithImpl<T, $Res, _$LoadSuccessImpl<T>>
    implements _$$LoadSuccessImplCopyWith<T, $Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl<T> _value, $Res Function(_$LoadSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$LoadSuccessImpl<T>(
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Fresh<List<T>>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl<T> extends _LoadSuccess<T> {
  const _$LoadSuccessImpl(this.items, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<T>> items;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedItemsState<$T>.loadSuccess(items: $items, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl<T> &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items, isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<T, _$LoadSuccessImpl<T>> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<T, _$LoadSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<T>> items) initial,
    required TResult Function(Fresh<List<T>> items, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<T>> items, Failure failure)
        loadFailure,
  }) {
    return loadSuccess(items, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<T>> items)? initial,
    TResult? Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult? Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<T>> items, Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(items, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<T>> items)? initial,
    TResult Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<T>> items, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(items, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_LoadInProgress<T> value)? loadInProgress,
    TResult? Function(_LoadSuccess<T> value)? loadSuccess,
    TResult? Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess<T> extends PaginatedItemsState<T> {
  const factory _LoadSuccess(final Fresh<List<T>> items,
      {required final bool isNextPageAvailable}) = _$LoadSuccessImpl<T>;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<T>> get items;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<T, _$LoadSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<T, $Res>
    implements $PaginatedItemsStateCopyWith<T, $Res> {
  factory _$$LoadFailureImplCopyWith(_$LoadFailureImpl<T> value,
          $Res Function(_$LoadFailureImpl<T>) then) =
      __$$LoadFailureImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Fresh<List<T>> items, Failure failure});

  @override
  $FreshCopyWith<List<T>, $Res> get items;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<T, $Res>
    extends _$PaginatedItemsStateCopyWithImpl<T, $Res, _$LoadFailureImpl<T>>
    implements _$$LoadFailureImplCopyWith<T, $Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl<T> _value, $Res Function(_$LoadFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl<T>(
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Fresh<List<T>>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl<T> extends _LoadFailure<T> {
  const _$LoadFailureImpl(this.items, this.failure) : super._();

  @override
  final Fresh<List<T>> items;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'PaginatedItemsState<$T>.loadFailure(items: $items, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl<T> &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<T, _$LoadFailureImpl<T>> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<T, _$LoadFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<T>> items) initial,
    required TResult Function(Fresh<List<T>> items, int itemsPerPage)
        loadInProgress,
    required TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(Fresh<List<T>> items, Failure failure)
        loadFailure,
  }) {
    return loadFailure(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Fresh<List<T>> items)? initial,
    TResult? Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult? Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult? Function(Fresh<List<T>> items, Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(items, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<T>> items)? initial,
    TResult Function(Fresh<List<T>> items, int itemsPerPage)? loadInProgress,
    TResult Function(Fresh<List<T>> items, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<T>> items, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(items, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_LoadInProgress<T> value) loadInProgress,
    required TResult Function(_LoadSuccess<T> value) loadSuccess,
    required TResult Function(_LoadFailure<T> value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_LoadInProgress<T> value)? loadInProgress,
    TResult? Function(_LoadSuccess<T> value)? loadSuccess,
    TResult? Function(_LoadFailure<T> value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_LoadInProgress<T> value)? loadInProgress,
    TResult Function(_LoadSuccess<T> value)? loadSuccess,
    TResult Function(_LoadFailure<T> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure<T> extends PaginatedItemsState<T> {
  const factory _LoadFailure(
      final Fresh<List<T>> items, final Failure failure) = _$LoadFailureImpl<T>;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<T>> get items;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<T, _$LoadFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
