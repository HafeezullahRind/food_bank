  import 'package:flutter/material.dart';

Widget TextFieledBarWidget(_height, _width) {
    return SizedBox(
      height: _height,
      width: _width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: _width * 0.34,
            height: _height,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search from here',
                hintStyle: const TextStyle(color: Colors.black),
                filled: true,
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          Container(
            height: _height,
            width: _width * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Colors.white,
            ),
            child: Icon(
              Icons.filter_list_sharp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
