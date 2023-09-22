
import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_widgets/bottom_sheet.dart';

import '../side_bar/bottom_drawer.dart';

class BottomNavBar extends StatefulWidget {
   int index  = 0;
   BottomNavBar({Key ? key});

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {

  onNavBarButtonTap(index)
  {
    showBottom( context, index);
  }

  @override
  Widget build(BuildContext context) {

    return  Stack(
      children:[ BottomNavigationBar(
      
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
    
             onTap: onNavBarButtonTap ,
    
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color.fromARGB(255, 195, 122, 80)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark, color: Colors.black),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment, color: Colors.black),
                label: 'Payment',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.black),
                label: 'Settings',
              ),
            ],
            selectedItemColor: Color.fromARGB(238, 17, 218, 23),
            unselectedItemColor: Color.fromARGB(252, 0, 0, 0),
    
    
    
           
    
        ),]
    );
  }
}