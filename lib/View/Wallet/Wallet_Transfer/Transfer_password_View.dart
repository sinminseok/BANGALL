import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_week/Utils/constants.dart';

import 'Wallet_Transfer_password_Widget.dart';

class Transfer_Password_View extends StatefulWidget {
  const Transfer_Password_View({Key? key}) : super(key: key);

  @override
  _Transfer_Password_ViewState createState() => _Transfer_Password_ViewState();
}

class _Transfer_Password_ViewState extends State<Transfer_Password_View> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
                child: Image.asset(
              "assets/Wallet/title_logo.png",
              width: size.width * 0.6,
            )),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width * 0.37,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                    child: Text(
                  "Secured Wallet",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ENTER YOUR PASSWORD",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wallet_Transfer_password_Widget(),
            )


          ],
        ),
      ),
    );
  }
}
