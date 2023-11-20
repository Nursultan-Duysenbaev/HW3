import 'package:flutter/material.dart';
import 'Home.dart';
import 'AllFood.dart';
import 'Recipes.dart';
import 'FavoriteFood.dart';
import 'AddNewFood.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/AllFood': (context) => AllFood(
              food: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
        '/Recipes': (context) => Recipes(
              food: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
        '/FavoriteFood': (context) => FavoriteFood(
              food: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
        '/AddNewFood': (context) => AddNewFood(
              food: ModalRoute.of(context)!.settings.arguments
                  as List<Map<String, String>>,
            ),
      },
    );
  }
}
