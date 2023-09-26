import 'package:flutter/material.dart';



class RightDrawer extends StatefulWidget {

  bool isDrawerOpen = false;
  VoidCallback toggleDrawer;
  RightDrawer({super.key , required this.isDrawerOpen , required this.toggleDrawer});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        if ((!widget.isDrawerOpen))
              GestureDetector(
                onTap: widget.toggleDrawer, // Close the drawer on tap
              ),

        
        AnimatedPositioned(
          top: 0,
          right: 20,
          width: widget.isDrawerOpen ? 0: MediaQuery.of(context).size.width /2,
          
          height:widget.isDrawerOpen ?0: MediaQuery.of(context).size.height/1.5,
          
           duration: const Duration(milliseconds: 300),

          child: Ink(
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          
            boxShadow: [
              !widget.isDrawerOpen?
                BoxShadow(
                  color: const Color.fromARGB(255, 204, 192, 192).withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset in x and y direction
                ): const BoxShadow(),
          
            ]),
            
            
            child: Text("${widget.isDrawerOpen}"))),

          
      ],
    );
  }
}
