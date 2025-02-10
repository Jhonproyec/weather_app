import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCitiesWeather extends StatelessWidget {
  const ListCitiesWeather({super.key});

  @override
  Widget build(BuildContext context) {
    List cities_weather = [
      {
        "name": "Guatemala",
      },
    ];
    return ListView.builder(
        itemCount: cities_weather.length,
        itemBuilder: (context, index) {
          return CardCityWeather();
        });
  }
}

class CardCityWeather extends StatelessWidget {
  const CardCityWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4d7ae0),
              Color(0xff68a5ea),
            ]),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage('assets/images/noche_nublado.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cloudy",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1,
                    ),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '29 Sep, ',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                        text: 'Tuesday',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      )
                    ]),
                  ),
                  Text(
                    "17 / 22°",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  )
                ],
              ),
              GestureDetector(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    FontAwesomeIcons.angleRight,
                    size: 25,
                    color: Color(0xff608ee5),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
