class WeatherModel{
  final String nameCity;
  final String nameRegion;
  final String country;
  final String localTime;
  final double tempCelsius;
  final double tempFor;
  final bool   isDay;
  final double windMph;
  final double windKph;
  final double feelsLikeC;
  final double feelsLikeF;
  final String condition;

  WeatherModel({
    required this.nameCity,
    required this.nameRegion,
    required this.country, 
    required this.localTime, 
    required this.tempCelsius, 
    required this.tempFor,
    required this.isDay, 
    required this.windKph, 
    required this.windMph, 
    required this.feelsLikeC, 
    required this.feelsLikeF,
    required this.condition
  });


  factory WeatherModel.fromJson(Map<String, dynamic> json){
    final isDay = json['current']['is_day'] == 1 ? true : false;
    return WeatherModel(  
      nameCity: json['location']['name'],
      nameRegion: json['location']['region'],
      country: json['location']['country'],
      localTime: json['location']['localtime'],
      tempCelsius: json['current']['temp_c'],
      tempFor: json['current']['temp_f'],
      isDay: isDay,
      windMph: json['current']['wind_mph'],
      windKph: json['current']['wind_kph'],
      feelsLikeC: json['current']['feelslike_c'],
      feelsLikeF: json['current']['feelslike_f'],
      condition: json['current']['condition']['text']
    );
  }





}