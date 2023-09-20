import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     

      appBar: AppBar(
        title: const Text("Home page"),

      ),

      drawer:const  Drawer(),

      

      body: const Center(child: Text("This is my App bar")),
    );
  }
}