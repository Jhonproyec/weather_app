import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/screens/list_cities_weather.dart';
import 'package:weather_app/themes/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<WeatherProvider>(context, listen: false)
          .userUbication(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, weatherProv, _) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text(
              "Climas",
              style: semiboldText.copyWith(
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.transparent,
            actions: [menuButton(weatherProv)],
          ),
          body: Container(
            // padding: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(1, 3),
                colors: [
                  Color(0xff3e61db),
                  Color(0xff69a7ea),
                ],
              ),
            ),
            // child: HeaderScreen(),
            child: ListCitiesWeather(),
          ),
        );
      },
    );
  }

  Container menuButton(WeatherProvider prov) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Ink(
        height: 35,
        width: 35,
        decoration:
            ShapeDecoration(color: Colors.white10, shape: CircleBorder()),
        child: IconButton(
          padding: EdgeInsets.all(5),
          onPressed: () {
            Intl.defaultLocale = 'es';
            // final time = prov.weatherData.localTime;
            // Parsear la fecha desde el string
            // DateTime dateTime = DateTime.parse(time);

            // Formatear la fecha al formato deseado: "09 Ene"
            // String formattedDate = DateFormat.jm().format(dateTime);

            // Obtener el día en formato abreviado: "Jue"
            // print(formattedDate);
          },
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
