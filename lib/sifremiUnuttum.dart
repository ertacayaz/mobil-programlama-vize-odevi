import 'package:flutter/material.dart';

class SifremiUnuttum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
              ),
              RaisedButton(
                  child: Text('Gönder'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
