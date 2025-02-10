import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class UserUbication{
  bool isLocationServiceEnabled = false;
  LocationPermission? locationPermission;


  Future<Position?> requestLocation(context) async {
    isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    // Verificamos que la ubicación esté activa
    if(!isLocationServiceEnabled){
      _showErrorMessage(context, "La ubicación no está activa");
      return null;
    }

    // Verificamos si tenemos el permiso de usuario para obtener la ubicación
    locationPermission = await Geolocator.checkPermission();
    if(locationPermission == LocationPermission.denied){
      // Pedimos permiso para obtener la ubicación
      locationPermission = await Geolocator.requestPermission();
      if(locationPermission == LocationPermission.denied){
        _showErrorMessage(context, "Permiso denegado");
        return null;
      }

      if(locationPermission == LocationPermission.deniedForever){
        _showErrorMessage(context, "Permiso denegado, por favor active los permisos necesarios manualmente");
        return null;
      }
    }
    // Retornamos la ubicación del usuario
    return await Geolocator.getCurrentPosition();
  }

  ScaffoldFeatureController _showErrorMessage(context, error){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(error))
    );
  }


}