import 'package:flutter/material.dart';

class hakkimizda extends StatefulWidget {
  @override
  _hakkimizdaState createState() => _hakkimizdaState();
}

class _hakkimizdaState extends State<hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, right: 17, left: 17),
        child: Text(
            "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 133311027 numaralı İlker Ayan tarafından 30 Nisan 2021 günü yapılmıştır.",
            style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 22)),
      ),
    );
  }
}
