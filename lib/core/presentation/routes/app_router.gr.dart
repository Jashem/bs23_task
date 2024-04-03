// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    RepoDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RepoDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RepoDetailsPage(
          key: args.key,
          repo: args.repo,
        ),
      );
    },
    ReposRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReposPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [RepoDetailsPage]
class RepoDetailsRoute extends PageRouteInfo<RepoDetailsRouteArgs> {
  RepoDetailsRoute({
    Key? key,
    required Repo repo,
    List<PageRouteInfo>? children,
  }) : super(
          RepoDetailsRoute.name,
          args: RepoDetailsRouteArgs(
            key: key,
            repo: repo,
          ),
          initialChildren: children,
        );

  static const String name = 'RepoDetailsRoute';

  static const PageInfo<RepoDetailsRouteArgs> page =
      PageInfo<RepoDetailsRouteArgs>(name);
}

class RepoDetailsRouteArgs {
  const RepoDetailsRouteArgs({
    this.key,
    required this.repo,
  });

  final Key? key;

  final Repo repo;

  @override
  String toString() {
    return 'RepoDetailsRouteArgs{key: $key, repo: $repo}';
  }
}

/// generated route for
/// [ReposPage]
class ReposRoute extends PageRouteInfo<void> {
  const ReposRoute({List<PageRouteInfo>? children})
      : super(
          ReposRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReposRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
