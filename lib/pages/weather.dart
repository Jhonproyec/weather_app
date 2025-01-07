import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:weather_app/themes/background.dart';
import 'package:weather_app/themes/text_style.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    List data_today = [
      {"hour": "12:00", "temp": "23°"},
      {"hour": "1:00", "temp": "24°"},
      {"hour": "2:00", "temp": "25°"},
      {"hour": "3:00", "temp": "23°"},
      {"hour": "4:00", "temp": "19°"},
      {"hour": "5:00", "temp": "18°"},
      {"hour": "6:00", "temp": "18°"},
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 80, bottom: 30, left: 20, right: 20),
          decoration: background,
          child: Column(
            children: [
              Text("London", style: bold),
              SizedBox(height: 5),
              Text(
                "Heavy Rain Tonight",
                style: subTitle,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GradientText(
                        '27',
                        colors: [Colors.white, Colors.white54],
                        style: TextStyle(
                          fontSize: 160,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GradientText(
                        gradientDirection: GradientDirection.ttb,
                        '°',
                        colors: [Colors.white, Colors.white24],
                        style: TextStyle(
                          fontSize: 120,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 160,
                    child: Image(
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/noche_lluvia.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xff093075),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                spreadRadius: 0,
                                blurRadius: 15,
                                offset: Offset(0, 5)),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Image(
                            image:
                                AssetImage('assets/images/lluvia_ligera.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('28%', style: smallText),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hoy",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -2),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/weather_nex_days');
                    },
                    child: Row(
                      children: [
                        Text(
                          "Próximos 7 días ",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: -1,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          FontAwesomeIcons.angleRight,
                          size: 15,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 150, // Altura fija para el ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data_today.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(13),
                      width: 90,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "12:00",
                            style:
                                smallText.copyWith(color: Colors.grey.shade500),
                          ),
                          Image(
                            height: 60,
                            width: 60,
                            image: AssetImage('assets/images/noche_aire.png'),
                          ),
                          Text(
                            "23°",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
