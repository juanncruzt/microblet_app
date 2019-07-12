import 'package:crypto_template/screen/market/TabBarBody/btc.dart';
import 'package:crypto_template/screen/market/TabBarBody/eth.dart';
import 'package:crypto_template/screen/market/TabBarBody/favorite.dart';
import 'package:crypto_template/screen/market/TabBarBody/usdt.dart';
import 'package:crypto_template/screen/market/TabBarBody/xrp.dart';
import 'package:flutter/material.dart';

class market extends StatefulWidget {
  final Widget child;

  market({Key key, this.child}) : super(key: key);

  _marketState createState() => _marketState();
}

class _marketState extends State<market> with SingleTickerProviderStateMixin {
  

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5,vsync: this,initialIndex: 1);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0,bottom: 10.0),
                      child: Text(
                        "Experiencia",
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
                _card(Icons.polymer, "# ARGÓN","Carlos Campodonico","Director Comercial","assets/image/experience/argon.png",100.0,68.0,
                  "Utilizamos los servicios de Microblet para integraciones tecnológicas de “última milla”. Esto nos requiere de equipos de profesionales sólidos y dedicados para una rápida solución de los desarrollos solicitados. Construyen  y diseñan los SPRINT que hacen a la integridad de la solución, constituyéndose en partners estratégicos de los proyectos.",context),
                
                _card(Icons.polymer, "# VN STUDIOS","Pablo Veliz","Dev Center Manager","assets/image/experience/vns.png",60.0,60.0,
                  "Elegimos trabajar con Microblet no solo porque son claros referentes en las tecnologías que manejan, sino también porque sabemos que podemos confiar plenamente en la calidad humana de un equipo sumamente responsable y dedicado a nuestro proyectos.",context),
                
                _card(Icons.polymer, "# MUNBEN","Paulo Fernández","Consultor de Integración","assets/image/experience/munben.png",110.0,25.0,
                  "Un aliado estratégico al momento de tener que desarrollar integraciones de sistemas de alta complejidad.Los resultados son de calidad y se realizan en tiempo y forma.",context),
                
                _card(Icons.polymer, "# UAKIKA","Andrés Kelly","Dueño","assets/image/experience/uakika.png",60.0,60.0,
                  "La experiencia con Microblet ha sido muy satisfactoria pudiendo destacar la responsabilidad y profesionalismo en cada uno de los trabajos que encaran. Sin duda son el socio tecnológico ideal.",context),
                
                _card(Icons.polymer, "# MC MORECOMPUTERS","Eduardo Menini","Director","assets/image/experience/mcmore.png",60.0,60.0,
                  "Requerimos la asistencia de Microblet para desarrollos de migración de sistemas de facturación tradicionales a sistemas de facturación electrónica. Los resultados fueron exitosos. Destacamos el profesionalismo y el compromiso.",context),
                
                _card(Icons.polymer, "# F&G SISTEMAS","Ezequiel Fernandez","Responsable Comercial","assets/image/experience/fg.png",60.0,60.0,
                  "¡Excelente servicio! Desarrollé mi aplicación con ellos, la cual se encuentra funcional al 100%, en continuo crecimiento y desarrollo. Técnicamente lo mejor que se puede pedir, lo mío inició en un papel dibujado por mí y se tomaron el trabajo de interpretar mis intenciones y convertirla en realidad. Gracias una vez más por todo.",context),
                
              ],
            ),
          ]
        )
       )
    );
  }
}

Widget _card(IconData _icon,String _title,  String _name,String _cargo,String _url, double _ancho,double _alto, String _desc, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=> new icoDetail()));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Theme.of(context).canvasColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 2.0,
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 280.0,
                width: 3.0,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: 300.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _title,
                        style: TextStyle(
                          fontFamily: "Gotik",
                          color: Colors.red,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 15.0),
                        child: Text(
                          _desc,
                          style: TextStyle(
                              color: Theme.of(context).textSelectionColor,
                              fontFamily: "Popins",
                              fontSize: 13.5),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                              height: _alto,
                              width:_ancho,
                              decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(_url),
                                  fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start, 
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                                      child: Text(
                                        _name,
                                        style: TextStyle(
                                            color: Theme.of(context).textSelectionColor,
                                            fontFamily: "Popins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ]
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start, 
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0, right: 15.0),
                                      child: Text(
                                        _cargo,
                                        style: TextStyle(
                                            color: Theme.of(context).textSelectionColor,
                                            fontFamily: "Popins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ]
                                ),
                              ],
                            ),                            
                          ]
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

