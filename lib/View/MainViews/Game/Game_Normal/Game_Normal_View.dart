import 'package:flutter/cupertino.dart';
import 'package:two_week/View/MainViews/Game/Game_Normal/Game_Normal_Container.dart';

import '../../Inventory/Inventory_View_Widget/Inventory_cars/Inventory_Cars_Card.dart';
import '../Game_Recommended/Game_Recommended_Container.dart';

Widget Game_Normal_View(Size size) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Image.asset("assets/Game/Add_game_img.png"),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: size.width * 1,
              height: size.height * 0.6,
             // shrinkwrap true
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    crossAxisSpacing: size.width * 0.01,
                    mainAxisSpacing: size.height * 0.01,
                    childAspectRatio: 1 / 0.6,

                  ),
                  itemCount: 10,
                  // shrinkWrap: true,

                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Game_Normal_Container(size),
                    );
                  }),
            ),
          ),
        )
      ],
    ),
  );
}
