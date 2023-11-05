import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {

  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
   int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value){
        navDrawerIndex = value;
        setState(() {});
      },
      children: const [
        Padding(
          padding: const EdgeInsets.fromLTRB(28, 20, 16, 10),
        ),
        NavigationDrawerDestination(icon: Icon(Icons.add), label: Text('Home Screen')),
        NavigationDrawerDestination(icon: Icon(Icons.add), label: Text('Home Screen'))

      ],
    );
  }
}