import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/model/weatherModel.dart';
import 'package:weather_app/services/userUbication.dart';
import 'package:weather_app/services/weatherService.dart';

class WeatherProvider extends ChangeNotifier{
  final _userUbication = new UserUbication();
  final _weatherService = new Weatherservice();
  late WeatherModel weatherData;


  Future<void> requestWeatherData(context) async {
    await _userUbication.requestLocation(context);
  }

  Future<void> userUbication(context) async{
    Position? userLocation = await _userUbication.requestLocation(context);
    if(userLocation != null){
      weatherData = await _weatherService.getWeatherUserUbication(context, userLocation);
    }
  }


}