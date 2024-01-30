import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_it/pages/appbar.dart';
import 'package:shop_it/pages/loginpage.dart';
import 'package:shop_it/pages/signup.dart';
import 'package:shop_it/pages/splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCm2d3ExbyfDYNrMUlvceTyvgY2NcVDLPA",
          authDomain: "go-dog-18e42.firebaseapp.com",
          projectId: "go-dog-18e42",
          storageBucket: "go-dog-18e42.appspot.com",
          messagingSenderId: "616250811560",
          appId: "1:616250811560:web:3acf184ad4e094ab03ce9d"
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => Homepage(),
      },
    );
  }
}