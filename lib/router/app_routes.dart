import 'package:flutter/material.dart';

import 'package:components_app/models/models.dart';
import 'package:components_app/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const NotFoundScreen()
    );
  }

  static List<MenuOption> menuOptions = [
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'animated', name: 'Animated Screen', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
    MenuOption(route: 'avatar', name: 'Avatar Screen', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.credit_card_outlined),
    MenuOption(route: 'inputs', name: 'Inputs Screen', screen: const InputsScreen(), icon: Icons.input_outlined),
    MenuOption(route: 'listview1', name: 'Listview 1 Screen', screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(route: 'listview2', name: 'Listview 2 Screen', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'listviewbuilder', name: 'Listiview builder & pull to refresh', screen: const ListviewBuilderScreen(), icon: Icons.build_circle_outlined),
    MenuOption(route: 'slider', name: 'Slider Screen', screen: const SliderScreen(), icon: Icons.open_with_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({ 'home' : (context) => const HomeScreen() });

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (context) => option.screen });
    }

    return appRoutes;
  }

}
