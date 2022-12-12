import 'package:flutter/material.dart';
import 'package:food_api/models/recipe_api.dart';
import 'package:food_api/views/home.dart';
import 'package:food_api/views/splash_screen.dart';

void main() {
  RecipeApi.getRecipe;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage':(context) => HomePage(),
      },
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
        ),
        home: SplashScreen());
        
  }
}
