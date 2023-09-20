import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key});

  @override
    Widget build(BuildContext context) {
      return   MaterialApp(

        title: "hello",
        theme: ThemeData(
          fontFamily: GoogleFonts.aboreto().fontFamily
        
        ),

        home: const HomePage(),


      initialRoute: "/home",

      routes: {
        // "/": (context) => const Placeholder(),
        "/home":(context) => const Login(),
        "/login": (context )=> const Login()
      } ,
      

      );
  }
}
