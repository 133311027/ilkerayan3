import 'package:flutter/material.dart';
import 'dart:convert';

class diziDetay extends StatefulWidget {
  final index;

  const diziDetay({Key key, @required this.index}) : super(key: key);
  @override
  _diziDetayState createState() => _diziDetayState();
}

class _diziDetayState extends State<diziDetay> {
  @override
  Widget build(BuildContext context) {
    String abc = widget.index;
    //var verioku;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          color: Colors.white12,
          child: Center(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/Bilgiler.json"),
              builder: (context, bilgiler) {
                var verioku = json.decode(bilgiler.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 40),
                          child: Image.asset(
                            verioku[vericekme(widget.index.toString())]
                            ["image"],
                            height: 200,
                            width: 300,
                          ),
                        ),
                        Text(
                            verioku[vericekme(widget.index.toString())]
                            ["detay"],
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFFFF052968))),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:60,bottom: 40),
                              child: Text("Dizi adi: " +
                                  verioku[vericekme(widget.index.toString())]
                                  ["dizi adi"] +
                                  "\n\nİlk bölüm yayın tarihi: " +
                                  verioku[vericekme(widget.index.toString())]
                                  ["İlk bölüm yayın tarihi:"] +
                                  "\n\nSon bölüm yayın tarihi: " +
                                  verioku[vericekme(widget.index.toString())]
                                  ["Son bölüm yayın tarihi"] +
                                  "\n\nYönetmen: " +
                                  verioku[vericekme(widget.index.toString())]
                                  ["Yönetmen"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue)),
                            ),

                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: verioku == null ? 0 : 1,
                );
              },
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFFF052968),
        title: Center(child: Text(appbarbaslik(widget.index.toString()))),
      ),
    );
  }

  vericekme(String takim) {
    if (takim == "leylailemecnun") {
      return 0;
    }
    if (takim == "behzatç") {
      return 1;
    }
    if (takim == "kurtlarvadisi") {
      return 2;
    }
    if (takim == "şahsiyet") {
      return 3;
    }
    if (takim == "ezel") {
      return 4;
    }
    if (takim == "kardeşpayı") {
      return 5;
    }
    if (takim == "arkasokaklar") {
      return 6;
    }
  }

  appbarbaslik(String takim) {
    if (takim == "leylailemecnun") {
      return "Leyla İle Mecnun";
    }
    if (takim == "behzatç") {
      return "Behzat Ç";
    }
    if (takim == "kurtlarvadisi") {
      return "Kurtlar Vadisi";
    }
    if (takim == "şahsiyet") {
      return "Şahsiyet";
    }
    if (takim == "ezel") {
      return "Ezel";
    }
    if (takim == "kardeşpayı") {
      return "Kardeş Payı";
    }
    if (takim == "arkasokaklar") {
      return "Arka Sokaklar";
    }
  }
}
