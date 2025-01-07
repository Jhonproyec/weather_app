import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/screens/list_cities_weather.dart';
import 'package:weather_app/themes/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Climas",
          style: semiboldText,
        ),
        backgroundColor: Colors.transparent,
        actions: [menuButton()],
      ),
      body: Container(  
        padding: EdgeInsets.only(top: 60),
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
  }

  Container menuButton() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Ink(
        height: 35,
        width: 35,
        decoration:
            ShapeDecoration(color: Colors.white10, shape: CircleBorder()),
        child: IconButton(
          padding: EdgeInsets.all(5),
          onPressed: () {},
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
