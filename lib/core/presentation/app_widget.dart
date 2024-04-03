import 'package:flutter/material.dart';

import 'routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
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
