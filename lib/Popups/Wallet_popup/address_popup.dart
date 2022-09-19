import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_week/Utils/constants.dart';

class Address_popup {
  void showDialog(Size size, BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
                  width: size.width * 0.76,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: size.width * 0.76,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                          "WALLET ACCOUNT",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Image.asset(
                        "assets/Wallet/png.png",
                        width: size.width * 0.35,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "ASDASDASFASFASFASFASFASFAS",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      ),
                      Container(
                        width: size.width*0.5,
                        height: size.height*0.001,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: size.width * 0.43,
                            height: size.height * 0.055,
                            decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35))),
                            child: Center(
                              child: Text(
                                "Copy Address",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }
  //update
void showDialog_question(Size size, BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel:
      MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: DefaultTextStyle(
            style: TextStyle(fontSize: 16, color: Colors.black),
            child: Container(
                width: size.width * 0.76,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.76,
                      height: size.height * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: kPrimaryColor),
                      child: Center(
                          child: Text(
                            "SPENDING ACCOUNT",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "    To use token in the Perplay App. \n you must hold Tokens in this account",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: size.width * 0.43,
                          height: size.height * 0.055,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(35))),
                          child: Center(
                            child: Text(
                              "Ok",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        );
      });
}
}
