import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sitirta/about.dart';
import 'package:sitirta/contact.dart';
import 'package:sitirta/history.dart';
import 'package:sitirta/home.dart';
import 'package:sitirta/invoice.dart';
import 'package:sitirta/login.dart';
import 'package:sitirta/profil.dart';
import 'package:sitirta/regis.dart';
import 'package:sitirta/register.dart';
import 'package:sitirta/sejarah.dart';
import 'package:sitirta/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final auth = FirebaseAuth.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wellcome(),
    );
  }
}
