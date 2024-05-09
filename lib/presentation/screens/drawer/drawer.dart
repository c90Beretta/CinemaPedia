import 'package:flutter/material.dart';

class Lateralnavbar extends StatefulWidget {
  
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Lateralnavbar({super.key, required this.scaffoldKey});

  @override
  State<Lateralnavbar> createState() => _LateralnavbarState();
}

class _LateralnavbarState extends State<Lateralnavbar> {
  int navIndex = 0;
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    // //todo: implement hasNotch
    //   final hasNotch = MediaQuery.of(context).padding.top > 35;
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {

        setState(() {
          navDrawerIndex = value;

        });
  
        widget.scaffoldKey.currentState?.closeDrawer(); 

      },
      children:  [
        

      ],
    );
  }
}