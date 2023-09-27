import 'package:flutter/material.dart';
import 'package:my_new_app/app_color.dart';


class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => LeftDrawerState();
}

class LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor().navigationbarColor,
              ),
              
              child: Card(
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
                        color:  AppColor().highlightedTextColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              leading:  Icon(Icons.leaderboard, color:  AppColor().iconColor,),
              title:  Text('Leaderboard', style: TextStyle(color: AppColor().normalTextColor)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle leaderboard tap
              },
            ),
            ListTile(
              leading:  Icon(Icons.mail, color: AppColor().iconColor),
              title:  Text('Mail Us', style: TextStyle(color: AppColor().normalTextColor)),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Handle mail us tap
              },
            ),
            ListTile(
              leading:  Icon(Icons.info,color: AppColor().iconColor,),
              title:  Text('About Us', style: TextStyle(color: AppColor().normalTextColor)),
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
