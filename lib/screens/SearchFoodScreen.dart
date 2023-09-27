// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_bank/Data/data.dart';
import 'package:food_bank/components/TextSearch.dart';

import '../components/CustomAppBar.dart';
import '../widgets/FoodListColWidget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  var _devWidgth;
  var _devheight;

  @override
  Widget build(BuildContext context) {
    _devheight = MediaQuery.of(context).size.height;
    _devWidgth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 1, 27),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            MainWidget(),
          ],
        ),
      ),
    );
  }

  Widget MainWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        topAppbar(_devheight * 0.05, _devWidgth),
        SizedBox(
          height: _devheight * 0.060,
        ),
        TextFieledBarWidget(_devheight * 0.06, _devWidgth),
        SizedBox(
          height: _devheight * 0.060,
        ),
        FoodListCol(_devheight * 0.7, _devWidgth, Foods)
      ],
    );
  }
}
