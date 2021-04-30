import 'package:flutter/material.dart';

class Haberler extends StatefulWidget {
  @override
  _HaberlerState createState() => _HaberlerState();
}

class _HaberlerState extends State<Haberler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haberler"),
      ),
      body: Container(
        child: ListView(children: [
          ListTile(title: Text("Ahmet Kural ve Murat Cemcirin yeni dizisi"),
            subtitle: Text("Detaylar için Tıklayın"),
            trailing: Icon(Icons.touch_app),
            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
          ListTile(title: Text("Haluk Bilginer ve Uğur Yücelden yeni proje"),
            subtitle: Text("Detaylar için Tıklayın"),
            trailing: Icon(Icons.touch_app),
            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
          ListTile(title: Text("Kurtlar Vadisi Kaos ne zaman başlayacak"),
            subtitle: Text("Detaylar için Tıklayın"),
            trailing: Icon(Icons.touch_app),
            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
        ],),


      ),
    );
  }
}
