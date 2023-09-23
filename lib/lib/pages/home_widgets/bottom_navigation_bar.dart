
import 'package:flutter/material.dart';

import '../side_bar/nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    bool collapse = false;
    
    return  BottomNavigationBar(
    
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
          onTap: (int index) {
            print(index);
            switch (index) {
              case 0:
                //Navigator.pop(context);
                break;
              case 1:
                collapse = !collapse;
                
                  Navigator.push(context, MaterialPageRoute(  builder: (context) => BottomDrawer(collapse: collapse))

                );
                   
          

                print("Case one executed");
                break;

              case 2:
                print(index);
                break;

              case 3:
                print(index);
                break;

              default:
            }
          });
  }
}