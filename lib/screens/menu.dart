import 'package:flutter/material.dart';



class DrawerMenuBar extends StatelessWidget {
  const DrawerMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HamburgerMenu(),
    );
  }
}


class HamburgerMenu extends StatefulWidget {
  const HamburgerMenu({super.key});

  @override
  State<HamburgerMenu> createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan), child: Column())
        ],
      )),
      body: Container(),
    );
  }
}
