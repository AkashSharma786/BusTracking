
import 'package:flutter/material.dart';
import '../home_page.dart';

class BottomNavBar extends StatefulWidget {
   int index  = 0;
   final VoidCallback toggle;
   final IntCallback setIndex ;

   BottomNavBar({Key ? key, required this.toggle , required this.setIndex}):super(key: key);

 
  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  

   onNavBarButtonTap(index)
  {
    
       widget.toggle();

      widget.setIndex(index);
    
   
     
  }

  @override
  Widget build(BuildContext context) {

    return  Stack(
      children:[ BottomNavigationBar(
      
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    
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
            selectedItemColor: const Color.fromARGB(238, 17, 218, 23),
            unselectedItemColor: const Color.fromARGB(252, 0, 0, 0),
    
        ),]
    );
  }
}