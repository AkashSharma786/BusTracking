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

      theme: ThemeData(

        primaryColor: Color.fromARGB(1, 128, 200, 86),
        scaffoldBackgroundColor: Colors.black,
        secondaryHeaderColor: Color.fromARGB(8, 73, 224, 8),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 128, 200, 86),
        

        ),
        textTheme: TextTheme(
        
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          
        ),
      ),

    routes: {

      '/' :(context) => const HomePage(),

      '/home' :(context) => const  Text(" Home "),

      '/login' :(context) => const Login(),

      //'/favorites' :(context) => const Favorites(),
    },

    );
  }
}





