import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            fadeInDuration: const Duration(milliseconds: 300),
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl),
            height: 220,
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
          ),

          if (name != null)
            Container(
              alignment: Alignment.center,
              child: Text(name ?? ''),
              padding: const EdgeInsets.only(bottom: 10, right: 10, top: 10),
            )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
    );
  }

}
