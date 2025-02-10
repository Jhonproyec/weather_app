import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/model/weatherModel.dart';
import 'package:weather_app/services/userUbication.dart';
import 'package:http/http.dart' as http;

class Weatherservice {
  final String key = '7a722583c0944bb19ab45037250601';
  final userUbicationService = new UserUbication();

  Future <WeatherModel> getWeatherUserUbication(context, Position userLocation) async{
    Uri url = Uri.parse(
      'https://api.weatherapi.com/v1/current.json?key=${key}&q=${userLocation.latitude},${userLocation.longitude}&lang=ES'
    );
    final response = await http.get(url);
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    final data = WeatherModel.fromJson(extractedData);
    final time = data.localTime;
    DateTime dateTime = DateTime.parse(time);

    String formattedDate = DateFormat('dd MMM').format(dateTime);


    // print(formattedDate);
    return WeatherModel.fromJson(extractedData);
  }
}