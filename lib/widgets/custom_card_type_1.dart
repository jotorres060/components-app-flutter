import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {

  const CustomCardType1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.live_tv_rounded, color: AppTheme.primary),
            title: Text('Hello Card'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer elementum mollis elit ut tincidunt. Nulla nec semper turpis.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
