import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/search_cities.dart';
import 'package:weather_app/pages/weather.dart';
import 'package:weather_app/pages/weather_next_days.dart';
import 'package:weather_app/providers/weather_provider.dart';

void main() async{
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<WeatherProvider>(create: (_) => WeatherProvider()),
      ],
      child: MaterialApp(
      
        title: 'Aplicación de Clima',
        debugShowCheckedModeBanner: false,
        routes: {
          '/home':              ( _ ) => HomePage(),
          '/search_cities':     ( _ ) => SearchCities(),
          '/weather':           ( _ ) => Weather(),
          '/weather_nex_days':  ( _ ) => WeatherNextDays()
      
        },
        initialRoute: '/home',
        
      ),
    );
  }
}