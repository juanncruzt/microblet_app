import 'package:crypto_template/screen/setting/SeeAllTemplate.dart';
import 'package:crypto_template/screen/setting/themes.dart';
import 'package:flutter/material.dart';
import 'package:crypto_template/component/style.dart';
import 'package:crypto_template/screen/home/Modal.dart';

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
  Modal modal = new Modal();

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
              height: 30.0,
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
                  height: 100.0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 0.0,bottom: 5.0),
                  child: Text(
                    "Alcance Internacional",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),           
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Microblet está habilitado por la AFIP (Administración Federal de Ingresos Públicos) como ente autorizado para la exportación de servicios informáticos.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Esto quiere decir que podemos emprender negocios sin limitaciones impositivas.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Confíenos su proyecto desde Argentina o desde cualquier parte del mundo",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ), 
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10.0,right: 10.0),
              child: OutlineButton(
                onPressed: () => modal.mainBottomSheet(context),
                child: Text("Contáctenos"),
                borderSide: BorderSide(color: Colors.blue),
                shape: StadiumBorder(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 0.0,bottom: 5.0),
                  child: Text(
                    "Ubicación",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),           
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Alicia Moreau de Justo 1150, Of. 306 A",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Ciudad Autónoma de Buenos Aires, Argentina",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 0.0,bottom: 5.0),
                  child: Text(
                    "Contacto",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),           
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "+549 11 5278 5910",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20.0,right: 20.0,bottom: 10.0),
              child: Text(
                "info@microblet.com",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
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
