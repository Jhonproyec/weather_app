import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class SearchCities extends StatelessWidget {
  const SearchCities({super.key});

  @override
  Widget build(BuildContext context) {
    List cities = [];
    FloatingSearchBarController _controller = FloatingSearchBarController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FloatingSearchBar(
        controller: _controller,
        builder: (context, index){
          return Text("Hola mundo");
        }
      )
    );
  }
}