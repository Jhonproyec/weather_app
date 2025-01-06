import 'package:flutter/material.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List countries = [];
    FloatingSearchBarController fsc = FloatingSearchBarController();
    return FloatingSearchBar(
      controller: fsc,
      hint: 'Search...',
      clearQueryOnClose: false,
      scrollPadding: const EdgeInsets.only(top: 16.0, bottom: 56.0),
      transitionDuration: const Duration(milliseconds: 400),
      // borderRadius: BorderRadius.circular(16.0),
      transitionCurve: Curves.easeInOut,
      accentColor: Colors.red,

      physics: const BouncingScrollPhysics(),
      elevation: 2.0,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {},
      onSubmitted: (query) async {},
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(showIfOpened: false, child: Text("!")),
        FloatingSearchBarAction(showIfOpened: false, child: Text("!")),
      ],
      builder: (BuildContext context, Animation<double> transition) {
        return countries.isEmpty ? Container() : ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                // String data = _citiesSuggestion[index];
                return InkWell(
                  onTap: () async {},
                  child: Container(
                    padding: const EdgeInsets.all(22.0),
                    child: Row(
                      children: [
                        Text("Hola"),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                thickness: 1.0,
                height: 0.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
