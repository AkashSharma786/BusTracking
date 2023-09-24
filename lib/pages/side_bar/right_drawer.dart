import 'package:flutter/material.dart';

class RightDrawer extends StatefulWidget {
  
  const RightDrawer({super.key });

  @override
  State<RightDrawer> createState() => RightDrawerState();
}

class RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
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
                    "dfsdfsdfsdfsfdfdf Doe",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.leaderboard, color: Colors.green),
              title: const Text('dfsdf', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle leaderboard tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail, color: Colors.green),
              title: const Text('dfsdf dfsdfsf Us', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle mail us tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.green),
              title: const Text('About Us', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle about us tap
              },
            ),
          ],
        ),
      );

  }
}
