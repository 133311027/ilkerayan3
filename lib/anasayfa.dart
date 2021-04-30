import 'package:flutter/material.dart';
import 'package:ilker_ayan/menü.dart';

class anasayfa extends StatefulWidget {
  final username;
  const anasayfa({Key key, @required this.username}) : super(key: key);
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text("Mobil programlama"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset("assets/image/turkdizileri.jpg"),
            ),
          ),
          Text(
            "Merhaba, " +
                widget.username +
                ", kullanıcıyla adıyla başarılı bir giriş yaptınız.",
            style: TextStyle(color: Color(0xFF31000000)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 40),
            child: Text(
                "     Bu uygulamada takip ettiğiniz dizilere ait güncel haberlere ve o dizilerin oyuncuları hakkındaki haberlere ulaşabilirsiniz.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFFFF500902),
                    fontStyle: FontStyle.italic)),
          )
        ],
      ),
      drawer: Menu(),
    );
  }
}
