import 'dart:async';

import 'package:flutter/material.dart';

class NavigationUtils {
  static void navigateToPagePop(context, Widget page, FutureOr<void> Function(dynamic) onBack,
      {bool fullscreen = false, String? routeName}) {
    Navigator.push(
      context,
      routeName == null
          ? MaterialPageRoute(builder: (BuildContext context) {
              return page;
            })
          : MaterialPageRoute(
              builder: (BuildContext context) {
                return page;
              },
              settings: RouteSettings(
                name: routeName,
              ),
            ),
    ).then(onBack);
  }

  static Future<dynamic> navigateToPage(context, Widget page, {bool fullscreen = false, String? routeName}) {
    return Navigator.push(
      context,
      routeName == null
          ? MaterialPageRoute(
              fullscreenDialog: fullscreen,
              builder: (BuildContext context) {
                return page;
              })
          : MaterialPageRoute(
              builder: (_) {
                return page;
              },
              settings: RouteSettings(
                name: routeName,
              ),
            ),
    );
  }

  static void navigatePop(context) {
    Navigator.pop(context);
  }
}
