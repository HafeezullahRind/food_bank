
  import 'package:flutter/material.dart';

Widget topAppbar(_height, _width) {
    return Container(
      height: _height,
      width: _width,
      padding: EdgeInsets.only(top: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.list,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
