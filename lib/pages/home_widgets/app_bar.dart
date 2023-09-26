
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
    
    VoidCallback controlRightDrawer;
    NavBar({Key ? key ,  required this.controlRightDrawer }) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    @override
    CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<NavBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
      
        backgroundColor:const Color.fromARGB(255, 128, 200, 86),
        title:const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),


        actions: [

          Padding(
            padding:  const EdgeInsets.all(8.0),

            child: IconButton(
              icon: const CircleAvatar( backgroundImage: AssetImage("assets/images/busLogo.png"),),
              onPressed: widget.controlRightDrawer,
              )
          ),

        ],
      );
    }
}


