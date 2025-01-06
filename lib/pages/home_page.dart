import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/screens/list_cities_weather.dart';
import 'package:weather_app/themes/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "Climas",
            style: semiboldText,
          ),
          backgroundColor: Colors.white,
          actions: [menuButton(context)],
        ),
        body: Container(  
          decoration: BoxDecoration( 
            color: Colors.white
          ),
          padding: EdgeInsets.only( left: 20, right: 20),
          child: ListCitiesWeather(),
        ),

      ),
    );
  }

  Container menuButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Ink(
        height: 35,
        width: 35,
        decoration:
            ShapeDecoration(color: Colors.grey.shade300, shape: CircleBorder(),),
        child: IconButton(
          padding: EdgeInsets.all(5),
          onPressed: () {
            Navigator.pushNamed(context, '/search_cities');
          },
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color(0xff37393e),
            size: 18,
          ),
        ),
      ),
    );
  }
}
