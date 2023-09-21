import 'dart:ui';

import 'package:flutter/material.dart';
import '../home_page.dart';

class BottomDrawer extends StatefulWidget {

   final parentKey = GlobalKey<HomePageState>();
   bool collapse;

  BottomDrawer({Key? key , required bool this.collapse}):super(key: key);


  @override
  State<BottomDrawer> createState() => BottomDrawerState();
}

class BottomDrawerState extends State<BottomDrawer>{

  


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;


    if(widget.collapse == true)
    {
      height = 0;
    }
    else
    {
      height = height - height/3; 
    }
    
   
  

    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)) ,
      child: Ink(


        width: MediaQuery.of(context).size.width,
        height: height,

        child: Container(

       color : const Color.fromARGB(255, 217, 203, 49),
          
          child: const Stack(
            
        
            children: [ 
              Positioned(
              bottom: 0,
              left: 0,
              child: Center(child: Text("Hellow"))
          
              ),
            ]
          ),
        ),
        
    
     ),
  
   
    );
  }
}
