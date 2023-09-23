import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  bool isOpen;
  
  Bookmark({super.key, required this.isOpen});

  @override
  State<Bookmark> createState() => BookmarkState();
}

class BookmarkState extends State<Bookmark> {
  void toggleDrawer() {
    setState(() {
      widget.isOpen = !widget.isOpen;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text('Content fgfgfgfg of the screen'),
        ),
     
            if ((widget.isOpen))
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
              bottom:
                  widget.isOpen ? 0 : -400, // Control the height of the drawer
              child: Container(
                height: 400, // Set the height of the drawer as needed
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 211, 136, 136),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.0)),
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
    );
  }
}