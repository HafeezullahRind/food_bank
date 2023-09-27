import 'package:flutter/material.dart';
import 'package:food_bank/Data/data.dart';
import 'package:food_bank/components/CustomAppBar.dart';
import 'package:food_bank/screens/SearchFoodScreen.dart';

import '../widgets/scrollablefoodWidget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var _devheight;
  var _devwidth;

  @override
  Widget build(BuildContext context) {
    _devheight = MediaQuery.of(context).size.height;
    _devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 1, 27),
      body: Stack(
        children: [
          _ImageBannerWidget(_devwidth, _devheight),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              child: _topBarWidget()),
        ],
      ),
    );
  }

  Widget _ImageBannerWidget(width, height) {
    return Container(
      height: _devheight * 0.30,
      width: _devwidth,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('images/meal_image2.jpeg'))),
    );
  }

  Widget _topBarWidget() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            topAppbar(_devheight * 0.13, _devwidth),
            SizedBox(
              height: _devheight * 0.014,
            ),
            Text(
              "Different \nKind of food",
              maxLines: 2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _devheight * 0.04,
                  fontWeight: FontWeight.bold),
            ),
            _foodcategoryWidget(),
            ScrollableFoodWidget(_devheight * 0.22, _devheight, Foods),
            _foodcategoryWidget(),
            GestureDetector(
                child:
                    ScrollableFoodWidget(_devheight * 0.22, _devheight, Foods)),
          ],
        ));
  }

  Widget _foodcategoryWidget() {
    return SizedBox(
      height: _devheight * 0.14,
      width: _devwidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Food category",
            style: TextStyle(
                color: Colors.white,
                fontSize: _devheight * 0.036,
                fontWeight: FontWeight.bold),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Divider(
                color: Colors.white,
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
