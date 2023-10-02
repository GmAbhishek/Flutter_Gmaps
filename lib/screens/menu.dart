import 'package:flutter/material.dart';
import 'package:google_maps_in_flutter/screens/NavRail.dart';

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
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("assets/wool.jpeg"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        image: AssetImage("assets/logo.jpeg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("CoolWool",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900))
                ],
              )),
          ListTile(
            onTap: ()
            {
              Navigator.push(
                context,MaterialPageRoute(builder: (context) => const NavRailExample())
              );
            },
            leading: const Icon(
              Icons.dashboard,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              "Dashboard",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          ListTile(
            onTap: ()
            {
              Navigator.push(
                  context,MaterialPageRoute(builder: (context) => const NavRailExample())
              );
            },
            leading: const Icon(
              Icons.location_on,
              size: 28,
              color: Colors.black,
            ),
            title: const Text(
              "Navigation",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.add_business,
              size: 28,
              color: Colors.black,
            ),
            title: Text(
              "Inventory",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              size: 28,
              color: Colors.black,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      )),
      body: Container(),
    );
  }
}
