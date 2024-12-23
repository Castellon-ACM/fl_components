import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

static final MenuOptions = <MenuOption>[
  MenuOption(
    route: 'home',
    icon: Icons.house_rounded,
    name: 'Home Screen',
    screen: const HomeScreen()),
     MenuOption(
    route: 'listview1',
    icon: Icons.list_alt_outlined,
    name: 'ListView tipo 1',
    screen: const Listview1Screen()),
     MenuOption(
    route: 'listview2',
    icon: Icons.list_alt_rounded,
    name: 'ListView tipo 2',
    screen: const Listview2Screen()),
     MenuOption(
    route: 'alert',
    icon: Icons.warning,
    name: 'Alert',
    screen: const AlertScreen()),
     MenuOption(
    route: 'card',
    icon: Icons.card_giftcard,
    name: 'Cards',
    screen: const CardScreen()),
     MenuOption(
    route: 'avatar',
    icon: Icons.person,
    name: 'Avatar',
    screen: const AvatarScreen()),
    
];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    
    return appRoutes;
  }
  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen());
    }

  
}