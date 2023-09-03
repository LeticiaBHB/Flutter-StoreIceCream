import 'package:flutter/material.dart';
import 'package:flutterweb/routing/route_names.dart';
import 'package:flutterweb/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutterweb/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigatDrawer extends StatelessWidget {
  const NavigatDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
        ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('Portifólio', Icons.videocam, EpisodesRoute),
          DrawerItem('About', Icons.help, AboutRoute)
        ],
      ),
    );
  }
}
