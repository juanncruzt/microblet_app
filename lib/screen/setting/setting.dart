import 'package:crypto_template/screen/setting/SeeAllTemplate.dart';
import 'package:crypto_template/screen/setting/themes.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/component/style.dart';

class setting extends StatefulWidget {
  ///
  /// Get data bloc from
  ///
  ThemeBloc themeBloc;

  setting({Key key, this.themeBloc}) : super(key: key);

  _settingState createState() => _settingState(themeBloc);
}

class _settingState extends State<setting> {
  ///
  /// Bloc for double theme
  ///
  ThemeBloc themeBloc;
  _settingState(this.themeBloc);
  bool theme = true;
  String _img = "assets/image/setting/lightMode.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Ajustes",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),
           
            SizedBox(
              height: 10.0,
            ),

            ///
            /// Image header
            ///
            InkWell(
              onTap: () {
                ///
                /// Change image header and theme color if user click image
                ///
                if (theme == true) {
                  setState(() {
                    _img = "assets/image/setting/nightMode.png";
                    theme = false;
                  });
                  themeBloc.selectedTheme.add(_buildLightTheme());
                } else {
                  themeBloc.selectedTheme.add(_buildDarkTheme());
                  setState(() {
                    theme = true;
                    _img = "assets/image/setting/lightMode.png";
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                  height: 125.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(_img), fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                height:400.0,
                width: double.infinity, 
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:18.0,right: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0,),
                      Text("Contacto",style: TextStyle(color: Theme.of(context).hintColor.withOpacity(0.7),fontFamily: "Popins",fontSize: 25.0)),
                      Padding(
                        padding: const EdgeInsets.only(right:5.0,bottom: 10.0,top:10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Nombre y Apellido *",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: "Popins",fontSize: 15.0)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:5.0,bottom: 10.0,top:5.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email *",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: "Popins",fontSize: 15.0)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:5.0,bottom: 10.0,top:5.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Teléfono *",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: "Popins",fontSize: 15.0)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:5.0,bottom: 0.0,top:5.0),
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "Mensaje",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: "Popins",fontSize: 15.0)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }

  Widget listSetting(String header, String title) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            header,
            style: TextStyle(
                color: Theme.of(context).hintColor,
                fontFamily: "Sans",
                fontSize: 13.0),
          ),
          SizedBox(
            height: 9.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: "Popins",
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w300),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          line()
        ],
      ),
    );
  }

  Widget line() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: double.infinity,
        height: 0.5,
        decoration: BoxDecoration(color: Theme.of(context).hintColor),
      ),
    );
  }

  ///
  /// Change to mode light theme
  ///
  DemoTheme _buildLightTheme() {
    return DemoTheme(
        'light',
        ThemeData(
          brightness: Brightness.light,
          accentColor: colorStyle.primaryColor,
          primaryColor: colorStyle.primaryColor,
          buttonColor: colorStyle.primaryColor,
          cardColor: colorStyle.cardColorLight,
          textSelectionColor: colorStyle.fontColorLight,
          scaffoldBackgroundColor: Color(0xFFFDFDFD),
          canvasColor: colorStyle.whiteBacground,
          dividerColor: colorStyle.iconColorLight,
          hintColor: colorStyle.fontSecondaryColorLight,
        ));
  }

  ///
  /// Change to mode dark theme
  ///
  DemoTheme _buildDarkTheme() {
    return DemoTheme(
        'dark',
        ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: colorStyle.background,
            backgroundColor: colorStyle.blackBackground,
            dividerColor: colorStyle.iconColorDark,
            accentColor: colorStyle.primaryColor,
            primaryColor: colorStyle.primaryColor,
            hintColor: colorStyle.fontSecondaryColorDark,
            buttonColor: colorStyle.primaryColor,
            canvasColor: colorStyle.grayBackground,
            cardColor: colorStyle.grayBackground,
            textSelectionColor: colorStyle.fontColorDark,
            textSelectionHandleColor: colorStyle.fontColorDarkTitle));
  }
}
