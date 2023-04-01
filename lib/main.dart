//import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/contact.dart';
import 'Screens/homescreen.dart';
import 'Screens/kids.dart';
import 'Screens/mens.dart';
import 'Screens/splash_screen.dart';
import 'Screens/women.dart';
//import 'package:login_page/template.dart';
import 'Screens/mylogin.dart';
import 'Screens/registration.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,]
    
  );
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,

    home: const SplashScreen(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      //'template':(context) => const MyTemplate(),
      'men':(context) => const MensShoes(),
      'women':(context) => const WomenShoes(),
      'homepage':(context) => MyHomePage(),
      'kids':(context) => KidsShoes(),
      'contact':(context) => const ContactScreen(),
    },
  ));
}
