
import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_widgets/bottom_sheet.dart';
import '../home_page.dart';
import '../side_bar/bottom_drawer.dart';

class BottomNavBar extends StatefulWidget {
   int index  = 0;
   final VoidCallback toggle;

   BottomNavBar({Key ? key, required this.toggle}):super(key: key);

 
  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  

   onNavBarButtonTap(index)
  {
    print("hell");
    
       widget.toggle();
      print("dkf");
    
   
     
  }

  @override
  Widget build(BuildContext context) {

    return  Stack(
      children:[ BottomNavigationBar(
            currentIndex: 0,
      
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