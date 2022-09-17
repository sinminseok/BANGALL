



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_week/Utils/constants.dart';
import 'package:two_week/View/Frame/Frame_Widgets/Coin_Widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:two_week/View/Wallet/Wallet_View.dart';
import '../../Widget/bottom_nav_widget.dart';
import '../MainViews/Game/Game_View.dart';
import '../MainViews/Inventory/Inventory_View.dart';
import '../MainViews/Lobby/Lobby_View.dart';
import '../MainViews/Market/Market_View.dart';
import '../MainViews/Workshop/Workshop_View.dart';

class Frame_View extends StatefulWidget {
  const Frame_View({Key? key}) : super(key: key);

  @override
  _Frame_View createState() => _Frame_View();
}

class _Frame_View extends State<Frame_View> {

  int _selectedItem = 0;
  final screens = [
    Lobby_View(),
    Inventory_View(),
    Workshop_View(),
    Game_View(),
    Market_View()
    // Home_Screen(),
    // Calendar_Screen(),
    // Deliver_Screen(),
    // Mypage_Screen()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height*0.09,
          elevation: 0,
          backgroundColor: kAppbarColor,
          title: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Row(
              children: [
                Image.asset("assets/icons/appbar_icons/ico_user.png",height: size.height*0.06,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Hello",style: TextStyle(fontSize: 12,color: Colors.grey),),
                      Text("GUEST",style: TextStyle(fontSize: 14,color: kPrimaryColor),)

                    ],
                  ),
                ),
                SizedBox(width: size.width*0.08,),
                Coin_Widget("xper_icon", "0.00", size),
                Coin_Widget("per_icon", "0.00", size),
                Coin_Widget("havah_icon", "0.00", size),

                InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: Wallet_View(

                              )));
                    },
                    child: Image.asset("assets/icons/appbar_icons/btn_wallet.png",width: size.width*0.083,))
              ],
            ),
          ),
        ),
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: CustomBottomNavigationBar(

            iconList: [
              "assets/icons/bottom_nav_icon/lobby_icon.png",
              "assets/icons/bottom_nav_icon/inventory_icon.png",
              "assets/icons/bottom_nav_icon/workshop_icon.png",
              "assets/icons/bottom_nav_icon/game_icon.png",
              "assets/icons/bottom_nav_icon/market_icon.png"

            ],

            titleList:[
              "LOBBY",
              "INVENTORY",
              "WORKSHOP",
              "GAME",
              "MARKET",
            ],
            onChange: (val) {
              setState(() {
                _selectedItem = val;
              });
            },
            defaultSelectedIndex: 0,
          ),
          body: screens[_selectedItem]),
    );
  }
}
