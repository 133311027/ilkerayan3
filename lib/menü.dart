import 'package:flutter/material.dart';
import 'package:ilker_ayan/Ayarlar.dart';
import 'package:ilker_ayan/Haberler.dart';
import 'package:ilker_ayan/Hakkimizdaa.dart';
import 'package:ilker_ayan/diziDetay.dart';

class Menu extends StatelessWidget {
  String index="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.5),
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset("assets/image/turkdizileri.jpg"),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Diziler",style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: Icon(Icons.ondemand_video_outlined),
                    children: <Widget>[
                      Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Leyla İle Mecnun"),
                          onTap: () {
                            index = "leylailemecnun";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,

                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Behzat Ç"),
                          onTap: () {
                            index = "behzatç";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Kurtlar Vadisi"),
                          onTap: () {
                            index = "kurtlarvadisi";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Şahsiyet"),
                          onTap: () {
                            index = "şahsiyet";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Ezel"),
                          onTap: () {
                            index = "ezel";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Kardeş Payı"),
                          onTap: () {
                            index = "kardeşpayı";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListTile(
                          title: Text("Arka Sokaklar"),
                          onTap: () {
                            index = "arkasokaklar";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => diziDetay(
                                    index: index,
                                  )),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text("Haberler"),
                    leading: Icon(Icons.chrome_reader_mode),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Haberler()),
                      );
                    },
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    title: Text("Ayarlar"),
                    leading: Icon(Icons.build),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>Ayarlar() ),
                      );
                    },
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    title: Text("Hakkımızda"),
                    leading: Icon(Icons.account_box),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hakkimizda()),
                      );
                    },
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  ListTile(
                    title: Text("Çıkış Yap"),
                    leading: Icon(Icons.logout),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),
                  Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
