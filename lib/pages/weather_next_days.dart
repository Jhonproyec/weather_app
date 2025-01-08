import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:weather_app/themes/background.dart';

class WeatherNextDays extends StatelessWidget {
  const WeatherNextDays({super.key});

  @override
  Widget build(BuildContext context) {
    List data_weather = [
      {"day": "8", "nombre_day": "Lun"},
      {"day": "9", "nombre_day": "Mar"},
      {"day": "10", "nombre_day": "Mie"},
      {"day": "11", "nombre_day": "Jue"},
      {"day": "12", "nombre_day": "Vie"},
      {"day": "13", "nombre_day": "Sab"},
      {"day": "14", "nombre_day": "Dom"},
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 0,
            bottom: 0,
            child: Container(
              decoration: background,
            ),
          ),
          Positioned.fill(
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.5,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff0f4cbe),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                  topRight: Radius.circular(75),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 65,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Icon(
                              FontAwesomeIcons.angleLeft,
                              color: Color.fromARGB(255, 54, 86, 199),
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          'Próximos 7 días',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: -1),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data_weather.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 90,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Column(
                            children: [
                              Image(
                                height: 50,
                                width: 50,
                                image:
                                    AssetImage('assets/images/dia_nublado.png'),
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 2),
                              Text(
                                '28',
                                style: TextStyle(
                                    color: Color(0xff3e61db),
                                    fontSize: 30,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Mon',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  color: Color(0xff96acf8),
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  letterSpacing: -1,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 70),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 450,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff5174bc),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(35),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.1, 0.6],
                          colors: [Color(0xff4062ce), Color(0xff528adf)],
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -30,
                            left: -40,
                            child: Container(
                              height: 200,
                              width: 200,
                              child: Image(
                                image:
                                    AssetImage('assets/images/dia_lluvia.png'),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 180,
                              left: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Heavy Rain",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -1),
                                  ),
                                  Text(
                                    "Tonight",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 23,
                                        letterSpacing: -1),
                                  ),
                                ],
                              )),
                          Positioned(
                            top: 40,
                            right: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  '28°',
                                  colors: [Colors.white, Colors.white54],
                                  style: TextStyle(
                                      fontSize: 90,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -1),
                                ),
                                Text(
                                  'Feels like 32°',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      height: -1.8,
                                      letterSpacing: -1),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Image(
                                    width: 90,
                                    height: 90,
                                    image: AssetImage('assets/images/aire.png'),
                                    fit: BoxFit.cover)
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/luna.png')),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '28%',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          letterSpacing: -1),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/noche_lluvia.png')),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '28%',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          letterSpacing: -1),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/lluvia_ligera.png')),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '28%',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          letterSpacing: -1),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
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
                              image:
                                  AssetImage('assets/images/noche_nublado.png'),
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
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
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
