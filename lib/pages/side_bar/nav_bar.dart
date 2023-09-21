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
    print(widget.collapse);
    double height = MediaQuery.of(context).size.height;

    print(height);


    if(widget.collapse == true)
    {
      height = 40;
    }
    else
    {
      height = height - height/3; 
    }
    
   
  

    return Material(
      
        

        child: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)) ,
        child: Ink(
         color : Color.fromARGB(241, 251, 50, 0),

    
          width: MediaQuery.of(context).size.width,
          height: height,
    
          child: Container(
            
            child:  Stack(
              
          
              children: [ 
                Positioned(


                bottom: height,

                left: 0,
                child: Center(child: Text("Hellow"))
            
                ),
              ]
            ),
          ),
          
      
       ),
      
       
      ),
    );
  }
}
