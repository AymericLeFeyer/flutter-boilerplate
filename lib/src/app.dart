import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/router/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Boilerplate App',
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
