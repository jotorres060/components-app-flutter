import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';
import 'package:components_app/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      routes: AppRoutes.getAppRoutes(),
      title: 'Components App',
      theme: AppTheme.lightTheme,
    );
  }

}
