import 'package:crypto_template/component/gainersModel.dart';
import 'package:crypto_template/component/loserModel.dart';
import 'package:crypto_template/component/modelGridHome.dart';
import 'package:crypto_template/screen/crypto_detail_card_homeScreen/DetailCryptoValue/cardDetailHome.dart';
import 'package:crypto_template/screen/home/Gainer.dart';
import 'package:crypto_template/screen/home/Loser.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:crypto_template/component/style.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer/shimmer.dart';

class home extends StatefulWidget {
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  ///
  /// Get image data dummy from firebase server
  ///
  var imageNetwork = NetworkImage(
      "https://firebasestorage.googleapis.com/v0/b/beauty-look.appspot.com/o/Screenshot_20181005-213938.png?alt=media&token=8c1abb09-4acf-45cf-9383-2f94d93f4ec9");

  ///
  /// check the condition is right or wrong for image loaded or no
  ///
  bool loadCard = true;

  @override
  @override
  void initState() {
    imageNetwork.resolve(new ImageConfiguration()).addListener((_, __) {
      if (mounted) {
        setState(() {
          loadCard = false;
        });
      }
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ///
            /// Header image slider
            ///
            SizedBox(
                height: 350.0,
                width: double.infinity,
                child: new Carousel(
                  boxFit: BoxFit.cover,
                  dotColor: Colors.white.withOpacity(0.8),
                  dotSize: 5.5,
                  dotSpacing: 16.0,
                  dotBgColor: Colors.transparent,
                  showIndicator: true,
                  overlayShadow: true,
                  overlayShadowColors: Theme.of(context)
                      .scaffoldBackgroundColor
                      .withOpacity(0.9),
                  overlayShadowSize: 0.25,
                  images: [
                    AssetImage("assets/image/News_Image/1.jpg"),
                    AssetImage("assets/image/News_Image/2.jpg"),
                    AssetImage("assets/image/banner/banner2.png"),
                    AssetImage("assets/image/banner/banner3.jpg"),
                  ],
                )),
            SizedBox(height: 10.0),

            ///
            ///
            /// check the condition if image data from server firebase loaded or no
            /// if image loaded true (image still downloading from server)
            /// Card to set card loading animation
            ///

            //loadCard ? _loadingCardAnimation(context) : _cardLoaded(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 0.0,bottom: 5.0),
                  child: Text(
                    "Microblet",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 0.0,bottom: 20.0),
                  child: Text(
                    "# SOLUCIONES DE SOFTWARE",
                    style: TextStyle(
                        fontFamily: "Gotik",
                        color: Colors.red,
                        fontSize: 13.0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 20.0,bottom: 5.0,),
                  child: Text(
                    "Nuestra visión",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "En Microblet estamos continuamente buscando desafíos que nos permitan crecer y alcanzar nuestro objetivo a largo plazo: convertirnos en referentes corporativos en todos aquellos desarrollos que impliquen la creación de APIs (Application Programming Interface) o interconexiones con distintos componentes dentro de la arquitectura de un sistema informático.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Siempre enfatizamos lo importante que es tener una capa de servicios lo suficientemente escalable y sólida, pero a la vez segura y de rápida integración.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Nosotros somos capaces de lograrlo.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),          
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 20.0,bottom: 5.0,),
                  child: Text(
                    "Nuestra misión",
                    style: TextStyle(
                        fontFamily: "Sans",
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Ya sea para construir una aplicación o para lograr la integración de uno o más sistemas, en Microblet siempre optamos por tecnologías open source. De esta manera no sólo evitamos el uso de licencias innecesarias sino que nuestros clientes tendrán la certeza de que, detrás de la tecnología a utilizar, hay una comunidad que la respalda.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Creemos en un mundo donde la tecnología no está condicionada por números de serie o ediciones limitadas.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0,right: 20.0,bottom: 0.0),
              child: Text(
                "Optamos por la libertad y la seguridad de nuestros clientes.",
                style: TextStyle(
                    fontFamily: "Pragmatica",
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.left,
              ),
            ),             
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  gridHome item;
  card(this.item);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),      
        child: Container(
          height: 70.0,
          width: _width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Theme.of(context).canvasColor,
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF656565).withOpacity(0.15),
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.1, 1.0))
              ]),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.name,
                      style: TextStyle(
                          color: Theme.of(context).textSelectionColor,
                          fontFamily: "Popins",
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            item.valueMarket,
                            style: TextStyle(
                                color: item.chartColor,
                                fontFamily: "Gotik",
                                fontSize: 13.5),
                          ),
                          Text(
                            item.valuePercent,
                            style: TextStyle(color: item.chartColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30.0,
                  child: new Sparkline(
                    data: item.data,
                    lineWidth: 0.3,
                    fillMode: FillMode.below,
                    lineColor: item.chartColor,
                    fillGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: item.chartColorGradient,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class cardLoading extends StatelessWidget {
  gridHome item;
  cardLoading(this.item);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Container(
        height: 70.0,
        width: _width / 2.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.1, 1.0))
            ]),
        child: Shimmer.fromColors(
          baseColor: Color(0xFF3B4659),
          highlightColor: Color(0xFF606B78),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Theme.of(context).hintColor,
                      height: 20.0,
                      width: 70.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 17.0,
                            width: 70.0,
                          ),
                          Container(
                            color: Theme.of(context).hintColor,
                            height: 17.0,
                            width: 70.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30.0,
                  child: new Sparkline(
                    data: item.data,
                    lineWidth: 0.3,
                    fillMode: FillMode.below,
                    lineColor: item.chartColor,
                    fillGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: item.chartColorGradient,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
///
/// Calling imageLoading animation for set a grid layout
///
///
Widget _loadingCardAnimation(BuildContext context) {
  return GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      childAspectRatio: 1.745,
      crossAxisCount: 2,
      primary: false,
      children: List.generate(
        listGridHome.length,
        (index) => cardLoading(listGridHome[index]),
      ));
}

///
///
/// Calling ImageLoaded animation for set a grid layout
///
///
Widget _cardLoaded(BuildContext context) {
  return GridView.count(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      childAspectRatio: 1.745,
      crossAxisCount: 2,
      primary: false,
      children: List.generate(
        listGridHome.length,
        (index) => card(listGridHome[index]),
      ));
}
