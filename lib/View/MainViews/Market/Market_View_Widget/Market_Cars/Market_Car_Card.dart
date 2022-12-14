import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../Utils/constants.dart';

Widget Market_Car_Card(
    Size size,
    String badge_title,
    int Mint_value,
    int nft_id,
    int Level,
    int Speed_value,
    int Luck_value,
    int Charge_value,
    int Repair_value,
    int distance) {
  return InkWell(
    onTap: (){

    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          width: size.width * 0.45,
          height: size.height * 0.4,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
                Radius.circular(6.0) //         <--- border radius here
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.27,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Mint: $Mint_value",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
              //car img
              Image.asset(
                "assets/Cars/car1.png",
                width: size.width * 0.36,
              ),
              //nftID
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: size.width * 0.23,
                  height: size.height * 0.03,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                        Radius.circular(30.0) //         <--- border radius here
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Container(
                          width: size.width * 0.04,
                          height: size.height * 0.04,
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.0073,
                              ),
                              Text(
                                "#",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text(
                        "$nft_id",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              //Level
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.143,
                  ),
                  Text(
                    "Level",
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0, bottom: 6),
                    child: Text(
                      "10",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Inventory/Card_icons/card_icon2.png",
                          width: size.width * 0.06,
                        ),
                        Text(
                          "$Speed_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Inventory/Card_icons/card_icon3.png",
                          width: size.width * 0.06,
                        ),
                        Text(
                          "$Luck_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Inventory/Card_icons/card_icon4.png",
                          width: size.width * 0.06,
                        ),
                        Text(
                          "$Charge_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Inventory/Card_icons/card_icon1.png",
                          width: size.width * 0.06,
                        ),
                        Text(
                          "$Repair_value",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("8,12 HVH",style: TextStyle(color: kPrimaryColor),),
                    Container(
                      width: size.width*0.13,
                      height: size.height*0.035,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.all(
                            Radius.circular(30.0) //         <--- border radius here
                        ),
                      ),
                      child: Center(child: Text("BUY",style: TextStyle(color: kPrimaryColor,fontSize: 12),)),
                    )

                  ],
                ),
              )
             
            ],
          ),
        ),
        Positioned(
          right: size.width*0.30,
          child: Image.asset("assets/Cars/badge.png",width: size.width*0.17,),
        ),
        Positioned(
          top: size.height*0.007,
          right: size.width*0.446,
          child: Image.asset("assets/Cars/badge_bottom.png",width: size.width*0.02,height: size.height*0.05,fit: BoxFit.fitWidth,),
        ),
        Positioned(
            right: size.width*0.33,
            top: size.height*0.005,
            child: Text("$badge_title",style: TextStyle(fontSize: 12,color: Colors.white),)
        ),
      ],
    ),
  );
}
