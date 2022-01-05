import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  final games = const['GTA V', 'Final Fantasy', 'The Last of Us', 'Days Gone'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2')
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: games.length
      )
    );
  }
  
}
