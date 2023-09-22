import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/main.dart';
import 'package:my_new_app/pages/home_widgets/app_bar.dart';
import 'package:my_new_app/pages/side_bar/bottom_drawer.dart';
import 'package:my_new_app/pages/home_widgets/bottom_navigation_bar.dart';
import 'package:my_new_app/pages/home_widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

   

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  
  bool isDrawerOpen = false;


  void toggleDrawer() {
    print("object called");
    setState(() {
          isDrawerOpen = !isDrawerOpen;

    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: const Color.fromARGB(0, 0, 0, 0),


      appBar: NavBar(),


      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/busLogo.png"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.leaderboard, color: Colors.green),
              title: Text('Leaderboard', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle leaderboard tap
              },
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.green),
              title: Text('Mail Us', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle mail us tap
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.green),
              title: Text('About Us', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle about us tap
              },
            ),
          ],
        ),
      ),




      body: Stack(
        children: [
          Center(
            child: Text('Content of the screen'),
          ),
          if (isDrawerOpen)
            GestureDetector(
              onTap: toggleDrawer, // Close the drawer on tap
              child: Container(
                color: Colors.black.withOpacity(0.5), // Background overlay
              ),
            ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: 0,
            right: 0,
            bottom: isDrawerOpen ? 0 : -400, // Control the height of the drawer
            child: Container(
              height: 400, // Set the height of the drawer as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Drawer Item 1'),
                    onTap: () {
                      // Add your functionality for Drawer Item 1 here
                      toggleDrawer(); // Close the drawer
                    },
                  ),
                  ListTile(
                    title: Text('Drawer Item 2'),
                    onTap: () {
                      // Add your functionality for Drawer Item 2 here
                      toggleDrawer(); // Close the drawer
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),



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
        
      

      bottomNavigationBar: BottomNavBar(toggle: toggleDrawer,),
    );
  }
}

































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
