import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  bool isOpen;
  double height;
  Bookmark({super.key, required this.isOpen , required this.height});

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
    return  Stack(
          children: [
          const Center(
            child: Text('Content fgfgfgfg of the screen'),
          ),
       
              // if ((widget.isOpen))
              //   GestureDetector(
              //     onTap: toggleDrawer, // Close the drawer on tap
              //     child: Container(
              //       color: Colors.black.withOpacity(0.5), // Background overlay
              //     ),
              //   ),
    
        
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: 0,
                right: 0,
                bottom: widget.isOpen ? 0 : -widget.height,
                  
                child: Container(
                  height: widget.height, 
                  decoration: const BoxDecoration(
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
                        title: const Text('Drawer Item 1'),
                        onTap: () {
                          // Add your functionality for Drawer Item 1 here
                          toggleDrawer(); // Close the drawer
                        },
                      ),
                      ListTile(
                        title: const Text('Drawer Item 2'),
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