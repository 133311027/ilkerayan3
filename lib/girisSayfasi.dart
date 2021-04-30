import 'package:flutter/material.dart';
import 'package:ilker_ayan/anasayfa.dart';

class girisSayfasi extends StatefulWidget {
  @override
  _girisSayfasiState createState() => _girisSayfasiState();
}

class _girisSayfasiState extends State<girisSayfasi> {
  String user = "";
  String pass = "";
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
      false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.asset("assets/image/turkdizileri.jpg"),
          ),
          Form(
            key: _key,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //formu ortaya getirdi
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      labelText: "Kullanıcı Adı",
                      labelStyle: TextStyle(color: Colors.purple),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "kullanıcı adını giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      user = value;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      labelText: "Parola", //
                      labelStyle: TextStyle(color: Colors.purple),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "şifrenizi giriniz";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      pass = value;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                        child: Text("Üye ol"),
                        onPressed: () {},
                      ),
                      MaterialButton(
                        child: Text("Şifremi Unuttum"),
                        onPressed: () {},
                      )
                    ],
                  ),
                  _loginButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _loginButton() => RaisedButton(
    child: Text("giriş yap "),
    onPressed: () {
      if (_key.currentState.validate()) {
        //yukarda ki validate alanı başarıyla gerçekleşmiş ise true döndür
        _key.currentState.save();
        if (user == "ilker" && pass == "ayan") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => anasayfa(
                  username: user,
                )),
          );
        } else {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("hata"),
                  content: Text("Giriş bilgileriniz hatalı"),
                  actions: <Widget>[
                    MaterialButton(
                        child: Text("Geri Dön"),
                        onPressed: () => Navigator.pop(context))
                  ],
                );
              });
        }
      }
    },
  );
}

