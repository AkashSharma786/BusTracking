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
  bool collapse = false;

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
  }
}
