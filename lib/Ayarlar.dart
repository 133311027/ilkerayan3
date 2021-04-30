import 'package:flutter/material.dart';
class Ayarlar extends StatefulWidget {
  @override
  _AyarlarState createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haberler"),
      ),
      body: Container(
        child: ListView(children: [
          ListTile(title: Text("Hesap Bilgileri"),
            trailing: Icon(Icons.trending_flat),

            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
          ListTile(title: Text("Şifreni Değiştir"),
            trailing: Icon(Icons.trending_flat),
            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
          ListTile(title:Text("Gizli ve Güvenlik politikamız"),
            trailing: Icon(Icons.trending_flat),
            contentPadding: EdgeInsets.only(top: 20,left: 20,right: 20),
            onTap: (){},
          ),
        ],),


      ),
    );
  }
}
