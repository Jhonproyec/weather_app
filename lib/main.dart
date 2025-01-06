import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/search_cities.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Aplicación de Clima',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (_) => HomePage(),
        '/search_cities': (_) => SearchCities(),
      },
      initialRoute: '/home',
      
    );
  }
}