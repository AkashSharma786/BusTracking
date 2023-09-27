
import 'package:flutter/material.dart';
import 'package:my_new_app/app_color.dart';

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
      
        backgroundColor:const AppColor().navigationbarColor,
        title: TextField(
          style: TextStyle(color: AppColor().highlightedTextColor),
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: AppColor().highlightedTextColor),
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


