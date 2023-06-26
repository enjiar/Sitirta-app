import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sitirta/login.dart';
import 'package:sitirta/regis.dart';
import 'package:sitirta/register.dart';

class wellcome extends StatefulWidget {
  static String tag = 'Wellcome';
  @override
  _wellcomeState createState() => new _wellcomeState();
}

class _wellcomeState extends State<wellcome> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 170.0,
        child: Image.asset('img/logo.png'),
      ),
    );

    final imsitirta = Text(
      "I'M SITIRTA",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );

    final tagline = Text(
      "Solution To Your Water Bill",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15,
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Register();
              },
            ),
          );
        },
        child: Text('Get Started', style: TextStyle(color: Colors.white)),
      ),
    );

    final logintag = TextButton(
      child: Text(
        'I already have an account',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return login();
            },
          ),
        );
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            logo,
            SizedBox(height: 15.0),
            imsitirta,
            SizedBox(height: 8.0),
            tagline,
            SizedBox(height: 100.0),
            registerButton,
            logintag,
          ],
        ),
      ),
    );
  }
}
