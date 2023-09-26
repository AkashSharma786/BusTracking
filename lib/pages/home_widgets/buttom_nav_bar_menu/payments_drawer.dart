import 'package:flutter/material.dart';

class PayMentDrawer extends StatefulWidget {
  bool isOpen;
  double height;
  PayMentDrawer({super.key, required this.isOpen , required this.height});

  @override
  State<PayMentDrawer> createState() => PayMentDrawerState();
}

class PayMentDrawerState extends State<PayMentDrawer> {
  void toggleDrawer() {
    setState(() {
      widget.isOpen = !widget.isOpen;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text('Content  of payment screen'),
        ),
     
            if ((widget.isOpen))
              GestureDetector(
                onTap: toggleDrawer, // Close the drawer on tap
                child: Container(
                  color: Colors.black.withOpacity(0.5), // Background overlay
                ),
              ),

      
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: 0,
              right: 0,
              bottom:
                  widget.isOpen ? 0 : -widget.height, // Control the height of the drawer
              child: Container(
                height: widget.height, // Set the height of the drawer as needed
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 97, 196, 25),
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
                      title: const Text('Payment Option 1'),
                      onTap: () {
                        // Add your functionality for Drawer Item 1 here
                        toggleDrawer(); // Close the drawer
                      },
                    ),
                    ListTile(
                      title: const Text('Option 2 Item 2'),
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