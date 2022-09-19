

import 'package:flutter/cupertino.dart';

Widget Car_Items_Widget(Size size){
  return Padding(
    padding: const EdgeInsets.only(top: 22.0),
    child: Container(
      width: size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/Cars/icons/lock_icon.png",
              width: size.width * 0.13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/Cars/icons/empty_icon.png",
              width: size.width * 0.13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/Cars/icons/ruby_icon.png",
              width: size.width * 0.13,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/Cars/icons/lock2_icon.png",
              width: size.width * 0.13,
            ),
          ),
        ],
      ),
    ),
  );
}