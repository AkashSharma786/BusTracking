import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_widgets/bottom_navigation_bar.dart';
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
    double height = MediaQuery.of(context).size.height/2;

    print(height);

    double width = MediaQuery.of(context).size.width;
    if(widget.collapse == true)
    {
      height = 40;
    }
    else
    {
      height = height - height/3; 
    }

    return  Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
    
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Container(
                    color: Color.fromARGB(255, 26, 28, 26),
                    
                    child: Center(
                      child: Text(
                        "Welcome to Bus Tracker App",
                        style: TextStyle(color: Color.fromARGB(255, 37, 152, 2)),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),

        bottomNavigationBar: BottomNavBar(),
    );

    
    // return Material(
    //   borderRadius:BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
    //   type: MaterialType.card,

      
    //     child: ConstrainedBox(
    //       constraints: BoxConstraints(maxHeight: height, maxWidth: width),
    //       child: Container(
            
    //           child:  Stack(
              
          
    //           children: [ 
    //             Positioned(


    //             bottom: 0,

    //             left: 0,
    //             child: Center(child: Text("Hellow"))
            
    //             ),
    //           ]
    //         ),
    //         ),
    //       ),
        
    // );
    
  }
}
