
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
    
    VoidCallback controlRightDrawer;
    NavBar({Key ? key ,  required this.controlRightDrawer }) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize; // default is 56.0

    @override
    CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<NavBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
      
        backgroundColor: Colors.green,
        title:const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),


        actions: [

          Padding(
            padding:  EdgeInsets.all(8.0),

            child: IconButton(
              icon: CircleAvatar( backgroundImage: AssetImage("assets/images/busLogo.png"),),
              onPressed: widget.controlRightDrawer,
              )
          ),




        ],
      );
    }
}


