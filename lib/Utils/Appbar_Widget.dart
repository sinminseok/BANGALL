import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../View/Frame/Frame_Widgets/Coin_Widget.dart';
import 'constants.dart';

Widget AppBar_Widget(Size size) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    toolbarHeight: size.height * 0.082,
    elevation: 0,
    backgroundColor: kAppbarColor,
    title: Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.19,
          ),
          Coin_Widget("xper_icon", "0.00", size),
          Coin_Widget("per_icon", "0.00", size),
          Coin_Widget("havah_icon", "0.00", size),
          Image.asset(
            "assets/icons/appbar_icons/btn_wallet.png",
            width: size.width * 0.083,
          )
        ],
      ),
    ),
  );
}
