import 'package:artivatic_test/features/home/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'core/constants/pages.dart';
import 'core/presentation/pages/error_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case Pages.homePage:
        {
          final args = settings.arguments as Map<String, dynamic>;

          return materialBuilder(
            widget: const HomePage(),
          );
        }

      default:
        return materialBuilder(widget: const ErrorPage());
    }
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
