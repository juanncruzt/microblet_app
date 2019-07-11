import 'package:crypto_template/screen/wallet/tabs/deposit.dart';
import 'package:crypto_template/screen/wallet/tabs/withdraw.dart';
import 'package:flutter/material.dart';

class walletDetail extends StatefulWidget {
  final Widget child;

  walletDetail({Key key, this.child}) : super(key: key);

  _walletDetailState createState() => _walletDetailState();
}

class _walletDetailState extends State<walletDetail>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text(
          "Market",
          style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontFamily: "Gotik",
              fontWeight: FontWeight.w600,
              fontSize: 18.5),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          _card(Icons.polymer, "Cautious",
                "For starters, we recommend the ABF Bond Index ETF, which gives an averange annual return of 4.3%"),
          _card(Icons.redeem, "Balanced",
                "Comfortable taking a bit more risk? STI ETF which gives an average annual return of 6.7%"),
          _card(Icons.atm, "Adventurous",
                "If growth is a high priority for you, we recommend the ABC unit trust which gives an average")
                
        ],
      ),
    );
  }
}


Widget _card(IconData _icon, String _title, String _desc) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, left: 15.0, right: 15.0, bottom: 5.0),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=> new icoDetail()));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Color(0xFF363940),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 170.0,
                width: 4.0,
                decoration: BoxDecoration(
                    color: Color(0xFF15EDED),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65.0),
                child: Icon(
                  _icon,
                  color: Colors.white54,
                  size: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: 250.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _title,
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w800,
                            fontSize: 16.5),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 15.0),
                        child: Text(
                          _desc,
                          style: TextStyle(
                              color: Colors.white54,
                              fontFamily: "Popins",
                              fontSize: 13.5),
                        ),
                      )
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

