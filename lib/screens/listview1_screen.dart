import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  final games = const['GTA V', 'Final Fantasy', 'The Last of Us', 'Days Gone'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1')
      ),
      body: ListView(
        children: [
          ...games.map((game) => ListTile(
            title: Text(game),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,),
          ))
        ],
      )
    );
  }
  
}
