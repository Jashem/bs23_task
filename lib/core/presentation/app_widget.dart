import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/providers.dart';
import 'routes/app_router.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  await ref.read(sembastProvider).init();
  return unit;
});

class AppWidget extends ConsumerWidget {
  AppWidget({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, next) {});
    return MaterialApp.router(
      title: 'BS23',
      theme: _setUpThemeData(),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: widget ?? const SizedBox(),
        );
      },
      routerConfig: _appRouter.config(),
    );
  }

  ThemeData _setUpThemeData() {
    return ThemeData(
      primaryColor: Colors.grey.shade50,
    );
  }
}
