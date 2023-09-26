import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_widgets/app_bar.dart';
import 'package:my_new_app/pages/home_widgets/bookmark_drawer.dart';
import 'package:my_new_app/pages/home_widgets/payments_drawer.dart';
import 'package:my_new_app/pages/home_widgets/settings_drawer.dart';
import 'package:my_new_app/pages/side_bar/right_drawer.dart';
import './side_bar/left_drawer.dart';

import 'home_widgets/bottom_navigation_bar.dart';


typedef IntCallback = void Function(int value);

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);

  


   

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  late double screenHeight;
  
  bool isDrawerOpen = false;
  int index = 0;
  bool isLeftDrawerOpen = false;
  bool isRightDrawerOpen = false;

  

  void setIndex(int currIndex)
  {
    setState(() {
      index = currIndex;
    });

  }


  void toggleDrawer() {
    setState(() {
          isDrawerOpen = !isDrawerOpen;

    });

    
  }


void toggleRightDrawer(){
  
 setState(() {
   isRightDrawerOpen = !isRightDrawerOpen;
 });
 print("Right drawer cll function $isRightDrawerOpen");
}
 

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).size.height /6;

  
       Widget content ;

          switch (index) {
            case 0:
            print("Case $index called");

           content = const Text("Home screen");

           break;

            case 1:
             content = Bookmark(isOpen : isDrawerOpen , height: screenHeight,);
            
             print("case $index called");
            
            break;

            case 2:
            content = PayMentDrawer(isOpen: isDrawerOpen , height: screenHeight,);

            break;

            case 3:
            content = SettingsDrawer(isOpen: isDrawerOpen , height: screenHeight,);
            break;
      
            
            default:
            content =  Bookmark(isOpen: isDrawerOpen , height: screenHeight,);
          }
        



    return  SingleChildScrollView(

      scrollDirection: Axis.vertical,
      

      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          backgroundColor: Colors.white,
          
          resizeToAvoidBottomInset: false,
              
              
              drawerDragStartBehavior: DragStartBehavior.start,
            
              
              
              
              appBar: NavBar( controlRightDrawer: toggleRightDrawer,),
              
              
              drawer: const LeftDrawer() ,
              
              body: Stack(
                children: [
                  RightDrawer(isDrawerOpen: isRightDrawerOpen , toggleDrawer: toggleRightDrawer,),
                  content,
                ],
              ),
                
              
              
               
              
              
              bottomNavigationBar: BottomNavBar(toggle: toggleDrawer, setIndex: setIndex,),
            
        ),
      ),
    );
  }
}
