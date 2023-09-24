import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/pages/home_widgets/app_bar.dart';
import 'package:my_new_app/pages/home_widgets/bookmark_drawer.dart';
import 'package:my_new_app/pages/home_widgets/payments_drawer.dart';
import 'package:my_new_app/pages/home_widgets/settings_drawer.dart';
import 'package:my_new_app/pages/side_bar/right_drawer.dart';
import './side_bar/left_drawer.dart';

import 'home_widgets/bottom_navigation_bar.dart';


typedef void IntCallback(int value);

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

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

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
   scaffoldKey.currentState!.openEndDrawer();
 });
}
 

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).size.height /6;

  
       Widget content ;

          switch (index) {
            case 0:
            print("Case $index called");

           content = Text("Home screen");

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
        



    return  Scaffold(
resizeToAvoidBottomInset: false,
          key: scaffoldKey,
        
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          
          
          appBar: NavBar( controlRightDrawer: toggleRightDrawer,),
          
          
          drawer: LeftDrawer() ,
          
          
        
          
          endDrawer:  RightDrawer() ,
          
          
          
          body: SingleChildScrollView(
            
            child: content
            ) ,
          
          
           
          
          
          bottomNavigationBar: BottomNavBar(toggle: toggleDrawer, setIndex: setIndex,),
        
    );
  }
}




 // body: LayoutBuilder(

      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     return SingleChildScrollView(
      //       child: ConstrainedBox(
      //         constraints: BoxConstraints(minHeight: constraints.maxHeight),
      //         child: IntrinsicHeight(
      //           child: Container(
      //             color: Color.fromARGB(255, 26, 28, 26),
                  
      //             child: Center(
      //               child: Text(
      //                 "Welcome to Bus Tracker App",
      //                 style: TextStyle(color: Color.fromARGB(255, 37, 152, 2)),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),




























// class HomePage extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }

// class HomePageState extends State<HomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Drawer Example'),
//       ),









//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0, // You can set the initial index
//         onTap: (index) {
//           toggleDrawer();
          
//                   },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'School',
//           ),
//         ],
//       ),
      
//     );
//   }
// }
