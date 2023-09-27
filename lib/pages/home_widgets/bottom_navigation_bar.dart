import 'package:flutter/material.dart';
import '../../widgets/home_page.dart';
import 'package:my_new_app/app_color.dart';


class BottomNavBar extends StatefulWidget {
  int index = 0;
  final VoidCallback toggle;
  final IntCallback setIndex;

  BottomNavBar({Key? key, required this.toggle, required this.setIndex})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  onNavBarButtonTap(index) {
    widget.toggle();

    widget.setIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BottomNavigationBar(
        backgroundColor: const AppColor().navigationbarColor,
        onTap: onNavBarButtonTap,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppColor().unSelectedColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: AppColor().unSelectedColor),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: AppColor().unSelectedColor),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: AppColor().unSelectedColor),
            label: 'Settings',
          ),
        ],
        selectedItemColor: const AppColor().selectedColor,
        unselectedItemColor: const AppColor().unSelectedColor,
      ),
    ]);
  }
}
