import 'dart:core';

import 'package:flutter/material.dart';
import 'package:routes/contactus_page.dart';
import 'package:routes/routes.dart';
import 'package:routes/signin_page.dart';
import 'package:routes/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      initialRoute: Routes.signInRoute,
      onGenerateRoute: (RouteSettings settings) {
        Widget routeWidget = _router._generateRouteWidget(settings.name);
        return MaterialPageRoute(
          builder: (_) => routeWidget,
          settings: settings,
        );
      },
    );
  }
}

class AppRouter {
  Widget _generateRouteWidget(String routeName) {
    return (_routeWidgetProvider(routeName));
  }

  _routeWidgetProvider(String routeName) {
    switch (routeName) {
      case Routes.signInRoute:
        return LoginPage();
      case Routes.signUpRoute:
        return SignInPage();
      case Routes.contactUs:
        return Contactus();
    }
  }
}
