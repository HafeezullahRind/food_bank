import 'package:flutter/material.dart';
import 'package:food_bank/Data/data.dart';

class FoodListCol extends StatelessWidget {
  FoodListCol(this._height, this._width, this.Foods);

  List<Food>? Foods;
  var _height;
  var _width;

  @override
  Widget build(BuildContext context) {
    double Price;
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Foods?.length,
        itemBuilder: (context, index) {
          Price = Foods![index].price;

          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: _height * 0.2,
                      width: _width * 0.16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                Foods![index].imageurl,
                              ))),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.white30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: _height * 0.25,
                  width: _width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Foods![index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        Foods![index].description,
                        style:
                            const TextStyle(color: Colors.white38, fontSize: 9),
                        maxLines: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${Price.toString()}',
                              style: const TextStyle(color: Colors.white)),
                          ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(247, 252, 94, 50))),
                              onPressed: () {},
                              child: const Center(
                                  child: Text(
                                "Add cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
