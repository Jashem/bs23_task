import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../../../repo_details/presentation/repo_details_page.dart';
import '../../../repos/domain/repo.dart';
import '../../../repos/presentation/repose_page.dart';
import '../../../splash/presentation/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: ReposRoute.page, path: "/"),
        AutoRoute(page: RepoDetailsRoute.page, path: "/details"),
      ];
}
