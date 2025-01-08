import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WeatherProvider  with ChangeNotifier{
  bool isLocationServiceEnabled = false;


  Future<Position?> requestLocation () async{
    isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    print(isLocationServiceEnabled);
  }



}