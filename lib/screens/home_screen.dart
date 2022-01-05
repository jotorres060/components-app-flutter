import 'package:flutter/material.dart';

import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon),
          onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
          title: Text(AppRoutes.menuOptions[index].name),
        ),
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) => const Divider()
      )
    );
  }

}
