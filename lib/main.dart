import 'package:flutter/material.dart';
import 'package:vize/anaSayfa.dart';
import 'package:vize/sifremiUnuttum.dart';
import 'package:vize/uyeOl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'uyeol', routes: {
      '/': (context) => GirisEkrani(),
      'uyeol': (context) => UyeOl(),
      'sifremiunuttum': (context) => SifremiUnuttum(),
      'anasayfa': (context) => AnaSayfa()
    });
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkrani createState() => _GirisEkrani();
}

class _GirisEkrani extends State<GirisEkrani> {
  String kullaniciAdi;
  String sifre;

  final _degerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Form(
            key: _degerKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                  ),
                  onSaved: (deger) {
                    kullaniciAdi = deger;
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                  ),
                  onSaved: (deger) {
                    sifre = deger;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      child: Text('Üye Ol'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'uyeol');
                      },
                    ),
                    MaterialButton(
                      child: Text('Şifremi Unuttum'),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sifremiunuttum');
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                ),
                RaisedButton(
                  child: Text('Giriş Yap'),
                  onPressed: () {
                    _degerKey.currentState.save();

                    if (kullaniciAdi != "demo" && sifre != "demo") {
                      debugPrint('Kullanıcı adı veya şifre hatalı');
                    } else {
                      Navigator.pushNamed(context, 'anasayfa');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
