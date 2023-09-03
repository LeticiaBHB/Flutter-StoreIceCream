import 'package:flutter/material.dart';
import 'package:flutterweb/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
        color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
          'leticia',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text('Desenvolvedora',
          style: TextStyle(color:Colors.white),)
        ],
      ),
    );
  }
}