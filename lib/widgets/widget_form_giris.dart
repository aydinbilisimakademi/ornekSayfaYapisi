import 'package:flutter/material.dart';
import 'package:muin/entities/entity_user.dart';

class WidgetFormGiris extends StatefulWidget {
  @override
  _WidgetFormGirisState createState() => _WidgetFormGirisState();
}

class _WidgetFormGirisState extends State<WidgetFormGiris> {
  final _FormGiris = GlobalKey<FormState>();
  User _user = User();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "Lütfen Giriş Yapınız",
            style: TextStyle(
              fontSize: 33,
            ),
          ),
          Form(
            key: _FormGiris,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  height: 55,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      labelText: "E-mail",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      return null;
                    },
                    onSaved: (value) {
                      _user.email = value;
                    },
                  ),
                ),
                Container(
                  width: 250,
                  height: 55,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Şifre",
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return null;
                    },
                    onSaved: (value) {
                      _user.password = value;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text("Şifremi Unuttum"),
                SizedBox(height: 20),
                RaisedButton(
                    child: Text("Giriş"),
                    onPressed: () {
                      if (_FormGiris.currentState.validate()) {
                        debugPrint("giriş yapıldı");
                      }
                    }),
                SizedBox(height: 20),
                Text("Hesap Oluştur"),
                SizedBox(height: 45),
                Text(
                  "Hesap oluşturarak üyelik sözleşmesini kabul etmiş olursunuz.",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
