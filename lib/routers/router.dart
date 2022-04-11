import 'package:base_knowledge/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'router_name.dart';

/// createdby Daewu Bintara
/// Monday, 11/04/22 09:53
/// Enjoy coding ☕

class Pages {

  /// Simplify [MaterialPageRoute]
  static MaterialPageRoute _MPR(WidgetBuilder builder, {bool fullscreenDialog = false}) {
    return MaterialPageRoute(builder: builder, fullscreenDialog: fullscreenDialog);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RouterName.splash :
        return _MPR((context) => const SplashScreen());
      default:
        return _MPR((context) => Container());
    }
  }
}