import 'package:flutter/material.dart';
import 'package:uts_pcs_annuurrafli/community_page.dart';
import 'package:uts_pcs_annuurrafli/home_page.dart';
import 'package:uts_pcs_annuurrafli/events_page.dart';
import 'package:uts_pcs_annuurrafli/directory_page.dart';
import 'package:uts_pcs_annuurrafli/profile_page.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
final Map<String, WidgetBuilder> routes = {
'/profile': (context) => ProfilePage(),
'/community': (context) => CommunityPage(),
'/events': (context) => EventsPage(),
'/directory': (context) => DirectoryPage(),
};

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Aplikasi Komunitas',
initialRoute: '/',
debugShowCheckedModeBanner: false,
onGenerateRoute: (RouteSettings settings) {
WidgetBuilder builder;
           switch (settings.name) {
      case '/':
        builder = (BuildContext context) => HomePage();
        break;
      case '/profile':
        builder = (BuildContext context) => ProfilePage();
        break;
      case '/community': {
        builder = (BuildContext context) => CommunityPage();
        break;
      }
      case '/events': {
        builder = (BuildContext context) => EventsPage();
        break;
      }
      case '/directory': {
        builder = (BuildContext context) => DirectoryPage();
        break;
      }
      default:
        throw Exception('Invalid route: ${settings.name}');
    }
    return MaterialPageRoute(builder: builder, settings: settings);
  },
);
}
}