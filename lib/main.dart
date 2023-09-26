import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Tracking App',

    

    routes: {

      '/' :(context) => const HomePage(),

      '/home' :(context) => const  Text(" Home "),

      '/login' :(context) => const Login(),

      //'/favorites' :(context) => const Favorites(),
    },

    );
  }
}





