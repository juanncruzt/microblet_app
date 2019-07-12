import 'package:flutter/material.dart';

class Modal{
  mainBottomSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                height: 400.0,
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
                      SizedBox(height: 10.0),
                      Text("Contacto",style: TextStyle(color: Theme.of(context).hintColor.withOpacity(0.7),fontFamily: "Popins",fontSize: 25.0)),
                      Padding(
                        padding: const EdgeInsets.only(right:5.0,bottom: 10.0,top:5.0),
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
                          maxLines: 4,
                          decoration: InputDecoration(
                            hintText: "Mensaje",
                            hintStyle: TextStyle(color: Theme.of(context).hintColor,fontFamily: "Popins",fontSize: 15.0)
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0, left: 10.0,right: 10.0,bottom: 0.0),
                            child: OutlineButton(
                              onPressed: () => {},
                              child: Text("Enviar"),
                              borderSide: BorderSide(color: Colors.blue),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ]
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }

  ListTile _createTile(BuildContext context, String name, IconData icon, Function action){
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: (){
        Navigator.pop(context);
        action();
      },
    );
  }

  _action1(){
    print('action 1');
  }

  _action2(){
    print('action 2');
  }

  _action3(){
    print('action 3');
  }
}