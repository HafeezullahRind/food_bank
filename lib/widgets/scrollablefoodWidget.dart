import 'package:flutter/material.dart';
import 'package:food_bank/Data/data.dart';

class ScrollableFoodWidget extends StatelessWidget {
  ScrollableFoodWidget(this._height, this._width, this.food);

  final double _height;
  final double _width;
  List<Food>? food;
  @override
  Widget build(BuildContext context) {
    double price_;
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: food?.length,
        itemBuilder: (context, index) {
          price_ = food![index].price;
          return Container(
            height: _height,
            width: _width * 0.20,
            padding: EdgeInsets.only(right: _width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _height * 0.50,
                  width: _width * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            food![index].imageurl,
                          ))),
                ),
                Text(food![index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _height * 0.10,
                    )),
                Text('\$${price_.toString()}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _height * 0.10,
                    )),
                Container(
                  height: _height * 0.16,
                  width: _width * 0.10,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(247, 252, 94, 50),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Add cart",
                    style: TextStyle(
                        color: Colors.white, fontSize: _height * 0.08),
                  )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
