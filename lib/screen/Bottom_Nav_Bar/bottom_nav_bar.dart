import 'package:crypto_template/screen/Bottom_Nav_Bar/custom_nav_bar.dart';
import 'package:crypto_template/screen/home/home.dart';
import 'package:crypto_template/screen/market/markets.dart';
import 'package:crypto_template/screen/news/news_home.dart';
import 'package:crypto_template/screen/setting/setting.dart';
import 'package:crypto_template/screen/setting/themes.dart';
import 'package:crypto_template/screen/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/component/style.dart';

class bottomNavBar extends StatefulWidget {

  ///
  /// Function themeBloc for get data theme from main.dart for double theme dark and white theme
  ///
  ThemeBloc themeBloc;
  bottomNavBar({this.themeBloc});

  _bottomNavBarState createState() => _bottomNavBarState(themeBloc);
}

class _bottomNavBarState extends State<bottomNavBar> {
 ThemeBloc _themeBloc;
 _bottomNavBarState(this._themeBloc);
  int currentIndex = 0;
  bool _color =true;
  Widget callPage(int current){
    switch (current) {
      case 0:
        return new home();
        break;
      case 1:
        return new news();
        break;
      case 2:      
        return new market();
        break;
      case 3:
        return new setting(themeBloc :_themeBloc);
        break;
      default: 
        return new home();
    }
  }

 
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       body: callPage(currentIndex),
        bottomNavigationBar: BottomNavigationDotBar ( // Usar -> "BottomNavigationDotBar"
        color: Colors.amber,
          items: <BottomNavigationDotBarItem>[
            BottomNavigationDotBarItem(icon: Icons.cloud, onTap: () { setState(() {
              currentIndex = 0;
            }); }),
            BottomNavigationDotBarItem(icon: Icons.business_center , onTap: () { setState(() {
              currentIndex = 1;
            }); }),
            
            BottomNavigationDotBarItem(icon: Icons.sms, onTap: () { setState(() {
              currentIndex = 2;
            }); }),
            BottomNavigationDotBarItem(icon: Icons.settings, onTap: () { setState(() {
              currentIndex = 3;
            }); }), 
          ]
      ),

    );
  }
}