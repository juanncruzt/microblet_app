import 'dart:math';
import 'dart:ui' as ui;
import 'package:crypto_template/component/AssetsWallet/assetsModel.dart';
import 'package:crypto_template/screen/wallet/walletDetail.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math.dart' as Vector;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:crypto_template/component/style.dart';

class wallet extends StatefulWidget {
  @override
  _walletState createState() => new _walletState();

  ///
  /// time for wave header wallet
  ///
  wallet() {
    timeDilation = 1.0;
  }
}

class _walletState extends State<wallet> {
  @override
  assetsWallet item;
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Size size = new Size(MediaQuery.of(context).size.width, 200.0);
    return new Scaffold(
      body: Stack(
        children: <Widget>[     
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 0.0,bottom: 5.0),
                child: Text(
                  "Nuestra visión",
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
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0,right: 20.0,bottom: 0.0),
            child: Text(
              "Compañía con base en Buenos Aires, Argentina, dedicada a la creación de soluciones de software full-stack. Nos especializamos en la construcción de APIs bajo los estándares más modernos y ágiles del mercado.",
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
    );
  }
}

