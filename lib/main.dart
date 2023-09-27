import 'package:flutter/material.dart';
import 'widgets/home_page.dart';
import 'widgets/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Tracking App',
      routes: {
        '/': (context) => const HomePage(),

        '/home': (context) => const Text(" Home "),

        '/login': (context) => const Login(),

        //'/favorites' :(context) => const Favorites(),
      },
    );
  }
}
