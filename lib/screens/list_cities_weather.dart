import 'package:flutter/material.dart';

class ListCitiesWeather extends StatelessWidget {
  const ListCitiesWeather({super.key});

  @override
  Widget build(BuildContext context) {
    List cities_weather = [
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
      {
        "name": "Guatemala",
      },
      {"name": "Mexico"},
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
    return Card(
      margin: EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.transparent,
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: [
              //lluvia
              // Color(0xff647b8f),
              // Color(0xff415572),
              Color(0xff70b8fc),
              Color(0xff2f76de),
            ]),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mi ubicación"),
                    Text("Lloviendo"),
                    Text("13°")
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 80,
                child: Image(image: AssetImage('assets/images/sol.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
