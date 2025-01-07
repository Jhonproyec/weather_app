import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              )),
          Positioned.fill(
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff0f4cbe),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(75),
                        topRight: Radius.circular(75))),
              )),
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
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff5174bc),
                            width: 2,
                          ), 
                          borderRadius: BorderRadius.circular(35),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [
                              0.1, 0.6
                            ],
                            colors: [
                              Color(0xff4062ce),
                              Color(0xff528adf)
                            ]
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(),
                            Text("Heavy Rain"),
                            Text("Tonight"),
                            Align(
                              alignment: Alignment(0, 0),
                            ),
                           
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
