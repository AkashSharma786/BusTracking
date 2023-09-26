import 'package:flutter/material.dart';



class RightDrawer extends StatefulWidget {
  bool isDrawerOpen = false;
  RightDrawer({super.key , required this.isDrawerOpen});

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
//print(widget.isDrawerOpen);
    return Stack(
      children: [

        
        AnimatedPositioned(
          top: 0,
          right: 20,
          width: widget.isDrawerOpen ? 0: MediaQuery.of(context).size.width /2,
          
          height:widget.isDrawerOpen ?0: MediaQuery.of(context).size.height/1.5,

          child: Ink(
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          
            boxShadow: [
              !widget.isDrawerOpen?
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: Offset(0, 3), // Offset in x and y direction
                ): BoxShadow(),
          
            ]),
            
            
            child: Text("${widget.isDrawerOpen}")),
          
           duration: Duration(milliseconds: 300)),

          
      ],
    );
  }
}
